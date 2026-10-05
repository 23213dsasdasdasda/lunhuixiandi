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

function luaFiles(dir) {
  return fs.readdirSync(dir, { withFileTypes: true }).sort((a, b) => a.name.localeCompare(b.name))
    .flatMap(entry => entry.isDirectory() ? luaFiles(path.join(dir, entry.name))
      : entry.name.endsWith('.lua') ? [path.join(dir, entry.name)] : []);
}

export function build(checkOnly = false) {
  const source = absolute('src');
  const files = luaFiles(source);
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
  bundle += `print = function(...) log.info(...) end\n`;
  bundle += `require('jass.runtime').error_handle = function(err) log.error('LUA_ERROR', debug.traceback(tostring(err), 2)) end\n`;
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
  fs.rmSync(staging, { recursive: true, force: true });
  fs.cpSync(absolute(config.mapSource), staging, { recursive: true });
  const jassFile = path.join(staging, 'map/war3map.j');
  let script = fs.readFileSync(jassFile, 'utf8');
  script = script.replace(/^\s*call Cheat\("exec-lua:[^"]*"\)\s*$/gm, '');
  const main = /(function\s+main\s+takes\s+nothing\s+returns\s+nothing\b[\s\S]*?)(\r?\nendfunction)/;
  if (!main.test(script)) throw new Error('Map script has no JASS main function');
  script = script.replace(main, '$1\n    call Cheat("exec-lua:w3mf_boot")$2');
  fs.writeFileSync(jassFile, script);
  fs.writeFileSync(path.join(staging, 'map/w3mf_boot.lua'), bundle);
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
