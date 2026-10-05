import fs from 'node:fs';
import path from 'node:path';
import { spawn, spawnSync } from 'node:child_process';
import { setTimeout as delay } from 'node:timers/promises';
import { root, config, absolute, build } from './build.mjs';

function powershell(script) {
  const result = spawnSync('powershell.exe', ['-NoProfile', '-NonInteractive', '-Command', `$ErrorActionPreference='Stop'; ${script}; exit 0`],
    { encoding: 'utf8', windowsHide: true });
  if (result.error) throw result.error;
  if (result.status !== 0) throw new Error(result.stderr.trim() || 'PowerShell check failed');
  return result.stdout.trim();
}

function processInfo(pid) {
  const value = powershell(`$p = Get-Process -Id ${Number(pid)} -ErrorAction SilentlyContinue; if ($p) { @{ name=$p.ProcessName; path=$p.Path } | ConvertTo-Json -Compress }`);
  return value ? JSON.parse(value) : null;
}

try {
  const launcher = absolute(path.join(config.kkwePath, 'bin/YDWEConfig.exe'));
  for (const file of [config.gamePath, launcher]) {
    if (!fs.existsSync(file)) throw new Error(`Missing executable: ${file}. Check config.json.`);
  }
  const installed = powershell("(Get-ItemProperty 'HKCU:\\Software\\Blizzard Entertainment\\Warcraft III' -ErrorAction Stop).InstallPath");
  if (path.resolve(installed).toLowerCase() !== path.dirname(path.resolve(config.gamePath)).toLowerCase()) {
    throw new Error(`KKWE registry directory (${installed}) differs from config.gamePath. Configure KKWE for the intended installation first.`);
  }
  if (powershell("Get-Process war3 -ErrorAction SilentlyContinue | ForEach-Object Id")) {
    throw new Error('Warcraft is already running. Exit the previous test game before pressing F6.');
  }
  const buildId = build();
  const gameRoot = path.dirname(path.resolve(config.gamePath));
  const deployedMap = path.join(gameRoot, 'Maps', 'W3MF', 'W3_MF_Test.w3x');
  fs.mkdirSync(path.dirname(deployedMap), { recursive: true });
  fs.copyFileSync(absolute(config.output), deployedMap);
  const logFile = absolute('logs/runtime.log');
  fs.writeFileSync(logFile, `Waiting for Warcraft Lua startup: ${buildId}\n`);
  const code = await new Promise((resolve, reject) => {
    const child = spawn(launcher, ['-launchwar3', '-loadfile', deployedMap], {
      cwd: gameRoot, stdio: 'inherit', windowsHide: true,
    });
    child.once('error', reject);
    child.once('exit', (code, signal) => signal ? reject(new Error(`Launcher terminated: ${signal}`)) : resolve(code));
  });
  // This KKWE build returns the new game's PID as its exit code.
  const game = code > 0 ? processInfo(code) : null;
  if (code !== 0 && game?.name.toLowerCase() !== 'war3') {
    throw new Error(`KKWE returned ${code}, but no matching Warcraft process is alive.`);
  }
  if (game?.path && path.resolve(game.path).toLowerCase() !== path.resolve(config.gamePath).toLowerCase()) {
    throw new Error(`KKWE launched an unexpected executable: ${game.path}`);
  }
  console.log(`Launcher accepted${game ? `; Warcraft PID ${code}` : ''}. Waiting up to 60 seconds for this build's Lua readiness...`);
  fs.writeFileSync(absolute('logs/last-test.json'), JSON.stringify({ buildId, launcherCode: code, game, map: deployedMap }, null, 2));
  const deadline = Date.now() + 60_000;
  let ready = false;
  while (Date.now() < deadline) {
    const log = fs.readFileSync(logFile, 'utf8');
    if (log.includes('LUA_ERROR')) throw new Error(`Lua initialization failed:\n${log}`);
    if (log.includes(`W3_MF_BOOT ${buildId}`) && log.includes('W3_MF_READY hero=')) {
      console.log(`TEST READY: ${buildId}\n${log.trim()}`);
      ready = true;
      break;
    }
    if (game && !processInfo(code)) throw new Error(`Warcraft PID ${code} exited before Lua became ready. See ${logFile}`);
    await delay(1000);
  }
  if (!ready) throw new Error(`No Lua readiness after 60 seconds. Check the game window and ${logFile}. Map execution is NOT confirmed.`);
} catch (error) { console.error(error.message); process.exitCode = 1; }
