import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { spawnSync } from 'node:child_process';

export const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
export const config = JSON.parse(fs.readFileSync(path.join(root, 'config.json'), 'utf8'));
export const absolute = value => path.resolve(root, value);

export function run(executable, args, cwd = root) {
  const result = spawnSync(executable, args, { cwd, stdio: 'inherit', windowsHide: true });
  if (result.error) throw result.error;
  if (result.status !== 0) throw new Error(`${executable} failed (exit ${result.status})`);
}

function copyTree(from, to) {
  fs.rmSync(to, { recursive: true, force: true });
  // Node's fs.cpSync hits a Windows stack overflow on this map's imported filenames.
  if (process.platform === 'win32') {
    fs.mkdirSync(to, { recursive: true });
    const result = spawnSync('robocopy.exe', [from, to, '/E', '/NFL', '/NDL', '/NJH', '/NJS', '/nc', '/ns', '/np'], { windowsHide: true });
    if (result.error) throw result.error;
    if (result.status === null || result.status >= 8) throw new Error(`robocopy failed (exit ${result.status})`);
    return;
  }
  fs.cpSync(from, to, { recursive: true });
}

function luaFiles(dir) {
  return fs.readdirSync(dir, { withFileTypes: true }).sort((a, b) => a.name.localeCompare(b.name))
    .flatMap(entry => entry.isDirectory() ? luaFiles(path.join(dir, entry.name))
      : entry.name.endsWith('.lua') ? [path.join(dir, entry.name)] : []);
}

export function build(checkOnly = false) {
  const source = absolute('src');
  // The recovered full-map translation is kept as reference source, but the MVP
  // build only packages the new Lua game modules.
  const files = luaFiles(source).filter(file =>
    !path.relative(source, file).replaceAll('\\', '/').startsWith('war3map/'));
  for (const file of files) {
    run(config.luaPath, [absolute('scripts/check.lua'), file]);
  }
  if (checkOnly) { console.log(`Lua syntax OK: ${files.length} files`); return; }
  fs.mkdirSync(absolute('build'), { recursive: true });
  fs.mkdirSync(absolute('logs'), { recursive: true });
  const buildId = new Date().toISOString();
  const logFile = absolute('logs/runtime.log').replaceAll('\\', '/');
  let bundle = `-- Generated file; edit src/. Build: ${buildId}\n`;
  bundle += `local log = require 'jass.log'\nlog.path = ${JSON.stringify(logFile)}\n`;
  bundle += `local console = require 'jass.console'\nconsole.enable = true\nlocal consoleWrite = console.write\n`;
  bundle += `print = function(...) log.info(...); consoleWrite(...) end\n`;
  bundle += `local runtime = require 'jass.runtime'\nruntime.handle_level = 0\nruntime.sleep = false\nruntime.error_handle = function(err)\n  local trace = debug.traceback(tostring(err), 2)\n  log.error('LUA_ERROR', trace)\n  consoleWrite('LUA_ERROR', trace)\nend\n`;
  bundle += `print('W3_MF_BOOT ${buildId}')\n`;
  for (const file of files) {
    const name = path.relative(source, file).replaceAll('\\', '/').replace(/\.lua$/, '').replaceAll('/', '.');
    bundle += `\npackage.preload[${JSON.stringify(name)}] = function(...)\n${fs.readFileSync(file, 'utf8')}\nend\n`;
  }
  // Separate bootstrap filename prevents main.lua from recursively requiring itself.
  bundle += '\nrequire("main")\n';
  fs.writeFileSync(absolute('build/main.lua'), bundle);
  run(config.luaPath, [absolute('scripts/check.lua'), absolute('build/main.lua')]);
  const staging = absolute('build/map');
  // Only generated staging files are replaced; never modify source map on build.
  copyTree(absolute(config.mapSource), staging);
  const jassFile = path.join(staging, 'map/war3map.j');
  let script = fs.readFileSync(jassFile, 'utf8');
  // Keep the JASS map entry as a minimal bridge into the Lua bootstrap.
  script = script.replace(/^\s*call Cheat\("exec-lua:[^"]*"\)\s*$/gm, '');
  const main = /(function\s+main\s+takes\s+nothing\s+returns\s+nothing\b)[\s\S]*?(\r?\nendfunction)/;
  if (!main.test(script)) throw new Error('Map script has no JASS main function');
  const newline = script.includes('\r\n') ? '\r\n' : '\n';
  script = script.replace(main, (_match, header, end) => `${header}${newline}    call Cheat("exec-lua:lua.base")${end}`);
  fs.writeFileSync(jassFile, script);
  const luaEntry = path.join(staging, 'map/lua/base.lua');
  fs.mkdirSync(path.dirname(luaEntry), { recursive: true });
  fs.writeFileSync(luaEntry, bundle);
  const output = absolute(config.output);
  fs.mkdirSync(path.dirname(output), { recursive: true });
  const temporary = output + '.building.w3x';
  fs.rmSync(temporary, { force: true });
  run(absolute(config.w2lPath), ['obj', staging, temporary]);
  if (!fs.existsSync(temporary) || fs.statSync(temporary).size < 512) throw new Error('No valid map produced');
  fs.renameSync(temporary, output);
  // A successful package no longer needs the expanded map copy.
  fs.rmSync(staging, { recursive: true, force: true });
  console.log(`Build OK: ${output}\nBuild ID: ${buildId}`);
  return buildId;
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  try { build(process.argv.includes('--check')); }
  catch (error) { console.error(error.message); process.exitCode = 1; }
}
