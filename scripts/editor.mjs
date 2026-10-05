import path from 'node:path';
import { spawn } from 'node:child_process';
import { config, absolute, root } from './build.mjs';
const child = spawn(absolute(path.join(config.kkwePath, 'KKWE.exe')),
  ['-loadfile', absolute(path.join(config.mapSource, '.w3x'))], { cwd: root, stdio: 'inherit' });
child.on('error', error => { console.error(error.message); process.exitCode = 1; });
