# War3_base

使用 VS Code 开发 Warcraft III Lua 地图的基础工程。

当前工程路径：`G:\轮回仙帝lua项目`。

当前采用 **VS Code + 直接编写 Lua + KKWE Lua 运行时 + w3x2lni 打包**，针对本机 Warcraft III 1.27。没有接入 TypeScriptToLua；源码入口是 `src/main.lua`，不是 `src/main.ts`。

日常玩法逻辑在 VS Code 编写，地形、单位摆放和物体数据用 KKWE 编辑。构建脚本自动把 Lua 放进地图，不需要手工复制进 Trigger Editor。

## 1. 完成情况与缺项

2026-11-05 更新：当前先按 MoeHero 的 Lua 启动结构做最小可运行版：初始化时关闭战争迷雾并创建初始任务，使用原图 `YJ03` 杨戬物编和 `h008.mdx` 导入模型；显示 1–9 难度面板后按计时器刷怪，击败第一只试炼怪会完成任务。`src/war3map/` 中的整图转换代码只保留作参考，不参与当前构建。

| 项目 | 当前状态 |
| --- | --- |
| Node.js、Lua、VS Code | 本机已有，可从命令行调用 |
| Lua Language Server、Tasks 扩展 | 本机已安装 |
| Lua 源码与基础模块 | 当前使用 `game/`、Player、Unit、Quest、Timer、Trigger、War3UI、Rawcode；旧示例模块未接入 MVP |
| Lua 语法检查 | 使用 `npm.cmd run check` 检查当前构建使用的 Lua 模块 |
| 单文件脚本与地图打包 | 通过 F6 构建；每次源码调整后仍需在游戏内确认 |
| 物编数据 | `map/table/` 保留工程现有原图数据；已与 `342.w3x` 解包结果核对 |
| 地图内部脚本 | 启动入口为 `lua/base.lua`，Lua 游戏入口为 `src/main.lua` |
| VS Code 任务 | 已配置测试、构建、打开编辑器三个任务 |
| F6 快捷键 | `local-w3mf.w3-mf-f6` 已安装；只在本项目启用，需信任工作区 |
| 当前玩法 | 选择难度后，计时器周期生成敌方单位；原图其余玩法暂不接入 |
| 游戏内执行 | 需以看到杨戬、初始任务和难度面板，并观察刷怪为准 |
| 启动器返回值 | 已修正：识别返回的 War3 PID，等待本次构建的 Lua 就绪标记，超时或 Lua 错误会报失败 |
| War3 API 智能补全 | 待补充；`meta/` 为空，仅有通用 Lua 语言服务 |
| Git | 使用 `.gitignore` 排除生成文件、日志和本机工具，源码与地图纳入版本管理 |
| 自动监听、热更新、Lua 断点调试 | 未实现；目前每次测试需要重新构建、启动地图 |

JASS `main` 只负责进入 `exec-lua:lua.base`；玩法写在 Lua 模块中。Lua 通过 `jass.common` 调用 Warcraft 提供的底层接口，不需要把玩法写成 JASS。

另外，本机语法检查器是 Lua 5.4.6，工程语言服务按 Lua 5.3 配置；语法检查不覆盖目标运行时的全部兼容性，开发时避免使用 Lua 5.4 专属语法。

## 2. 用 VS Code 打开工程

在 PowerShell 执行：

```powershell
cd G:\轮回仙帝lua项目
code .
```

应打开整个 `w3_mf` 文件夹，不能只打开某个 Lua 文件。若 VS Code 提示工作区信任，确认这是自己的项目后信任它，否则任务和本地扩展可能无法运行。

当前 `package.json` 没有 npm 依赖，**无需先执行 `npm install`**。`npm` 在这里用于统一运行本地脚本；KKWE 与 w3x2lni 已下载在 `.tools/` 中。

推荐扩展：

- `sumneko.lua`：Lua 语法、跳转和基础补全，本机已安装。
- `actboy168.tasks`：在状态栏显示任务按钮，本机已安装。

## 3. 先用任务或终端开发

打开 `src/main.lua`，修改代码后先保存。

### 只检查语法

```powershell
cd G:\轮回仙帝lua项目
npm.cmd run check
```

这里只解析 Lua，不执行 War3 API。不要直接用 `lua src/main.lua` 或 Code Runner 的“运行代码”来测试地图：普通 Lua 解释器没有 `jass.common` 等游戏模块。

### 构建地图

```powershell
cd G:\轮回仙帝lua项目
npm.cmd run build
```

也可在 VS Code 按 `Ctrl+Shift+B`，运行默认构建任务。输出：

```text
build/main.lua          合并后的 Lua 脚本
build/map/              打包暂存目录，打包成功后自动删除
dist/W3_MF_Test.w3x     测试地图
```

不要直接修改 `build/` 或 `dist/`，下次构建会重新生成它们。

### 尝试启动地图测试

先退出之前的魔兽测试实例，再执行：

```powershell
cd G:\轮回仙帝lua项目
npm.cmd test
```

或者按 `Ctrl+Shift+P` → **Tasks: Run Task / 任务: 运行任务** → **War3: F6 Test**。装有 Tasks 扩展时，也可点击状态栏的“F6 测试地图”按钮；按钮名称本身不表示 F6 已绑定。

该命令先构建，再把测试地图复制到游戏目录下的 `Maps/W3MF/W3_MF_Test.w3x`，然后通过 KKWE 启动。它会核对注册表游戏目录与 `config.json` 一致，并最多等待 60 秒确认本次 Lua 初始化完成。入口沿用 MoeHero 的 `exec-lua:lua.base` 形式，并启用游戏 Lua 控制台。等待期间，Lua 日志也会实时显示在 VS Code 的 F6 任务终端，前缀为 `[War3 Lua]`；游戏目录需要有写入权限。

成功表现：游戏内出现杨戬、初始任务提示和难度选择面板；选择难度 1–9 后开始刷怪，击败第一只怪后任务完成。日志应出现 `W3_MF_INITIAL_QUEST_READY`、`W3_MF_HERO_READY`、`W3_MF_DIFFICULTY_FRAME_READY`、`W3_MF_WAVES_STARTED` 和 `W3_MF_WAVE`。

## 4. 如何绑定 F6

**本机已安装 F6 扩展，无需手动绑定。** 打开本项目并信任工作区后，按 F6 即可自动保存、构建和启动测试。若安装前已打开 VS Code，可在命令面板执行 `Developer: Reload Window`。

换电脑或重新安装扩展时：

```powershell
cd G:\轮回仙帝lua项目
npm.cmd run setup:f6
```

该命令将 `tools/vscode-f6/` 源码打包并本地安装，不需要发布到扩展市场。安装成功后自动删除暂存目录和安装包，已安装的扩展不受影响。

如果不想使用该扩展，也可以用下面的手动绑定方式（二选一）：

1. 按 `Ctrl+Shift+P`。
2. 选择 **Preferences: Open Keyboard Shortcuts (JSON) / 首选项: 打开键盘快捷方式(JSON)**，不是默认快捷键文件。
3. 在现有 JSON 数组中追加下面一项，保留原有条目并注意逗号。

```json
{
  "key": "f6",
  "command": "runCommands",
  "when": "config.w3mf.enabled",
  "args": {
    "commands": [
      "workbench.action.files.saveAll",
      {
        "command": "workbench.action.tasks.runTask",
        "args": "War3: F6 Test"
      }
    ]
  }
}
```

项目的 `.vscode/settings.json` 已设置 `w3mf.enabled: true`，因此这个绑定只在启用了该设置的工作区生效。**快捷键应写入用户的 Keyboard Shortcuts JSON，创建 `.vscode/keybindings.json` 不会生效。**

保存快捷键后，F6 的目标流程是：

```text
保存文件 → Lua 语法检查 → 合并脚本 → 注入启动调用 → 打包并部署地图 → KKWE 启动 → 等待 Lua 就绪
```

绑定快捷键只解决入口问题，不能修复运行时错误。已安装本工程扩展时，无需再添加这条手动绑定。

## 5. 源码怎么组织

```text
src/
  main.lua              玩法入口
  game/
    init.lua            关闭战争迷雾、创建初始任务
    main.lua            设置镜头、创建杨戬、打开难度选择
    difficulty.lua      DzFrame 自定义难度面板与 Lua 同步回调
    waves.lua           难度对应的周期刷怪和击杀任务进度
  core/
    War3API.lua         jass.common 接口适配
    Player.lua          Player:create_unit Lua 方法
    Unit.lua            单位位置、攻击、选择方法
    Quest.lua           任务与目标封装
    War3UI.lua          DzFrame 接口适配；缺少扩展 API 时回退到对话框
    Trigger.lua         Lua 回调触发器封装
    Dialog.lua          DzFrame 不可用时的难度对话框回退
    Timer.lua           一次性/周期计时器
    Rawcode.lua         四字符对象 ID 转数字
  war3map/
    ...                 整图转换参考代码；构建时排除
map/                    可编辑的 LNI 地图源文件
scripts/                构建、启动、编辑器脚本
.vscode/                VS Code 任务和设置
meta/                   预留 API 类型声明目录，当前为空
.tools/                 本地第三方工具，默认在资源管理器中隐藏
```

`Event` 和 `FireBall` 是旧示例，目前不属于这套 MVP。游戏逻辑优先通过 `Player:create_unit`、`Unit:attack`、`Timer.loop` 这些 Lua 方法编写；底层适配器再调用 `jass.common`。

### 第一次修改

先从 `src/game/` 修改当前玩法。`src/war3map/` 是整图反编译参考，不会被当前打包器加载；新功能按需写成小的 Lua 模块接入。

### 新增模块

例如创建 `src/gameplay/Welcome.lua`：

```lua
local War3API = require 'core.War3API'
local war3 = War3API.common
local Welcome = {}

function Welcome.show(player)
    war3.DisplayTimedTextToPlayer(player, 0, 0, 10, 'Hello from VS Code!')
end

return Welcome
```

在 `src/main.lua` 顶部导入：

```lua
local Welcome = require 'gameplay.Welcome'
```

在现有 `Timer.after(0, function() ... end)` 回调内、创建 `player` 后调用：

```lua
Welcome.show(player)
```

构建器会递归收集 `src/` 下的 `.lua` 文件，注册为 `package.preload` 模块。路径 `src/gameplay/Welcome.lua` 对应模块名 `gameplay.Welcome`；新增模块不用手工维护打包列表。注意大小写一致。

游戏原生接口从 `core.War3API` 获取。只有这个适配模块直接连接运行时的 `jass.common` 原生绑定；这里的 JASS 是引擎 API 名称，不是玩法代码使用 JASS 语言编写。

## 6. 地形与物编怎么改

```powershell
cd G:\轮回仙帝lua项目
npm.cmd run editor
```

也可运行 VS Code 任务 **War3: World Editor**。该脚本尝试用 KKWE 打开 `map/.w3x`；编辑器打开与保存流程尚未实际验收。若没有自动打开地图，可在 KKWE 中手动选择此文件。

`map/.w3x` 是 LNI 工程标记，不是完整的地图压缩包。地形、物编等源数据保存在 `map/` 下。编辑后保存，再回到 VS Code 构建。

不要用 `dist/W3_MF_Test.w3x` 作为日常编辑源，否则构建时会覆盖其中的修改。无需手动添加 Lua 初始化触发器：构建时会在暂存的 `war3map.j` 中注入 `Cheat("exec-lua:lua.base")`，源地图不被该步骤修改。

## 7. 日志与常见问题

F6 终端会实时显示运行日志；日志文件固定在 `G:\轮回仙帝lua项目\logs\runtime.log`。也可以在 PowerShell 里持续查看：

```powershell
cd G:\轮回仙帝lua项目
Get-Content .\logs\runtime.log -Wait
```

按 `Ctrl+C` 停止查看。每次 `npm.cmd test` 都会重置这个日志，需要保留时先复制一份。

| 现象 | 含义与处理 |
| --- | --- |
| F6 没反应或切换焦点 | 快捷键尚未绑定或有冲突，按第 4 节配置；先用任务入口排除快捷键问题 |
| `npm.ps1` 被执行策略阻止 | 使用文档中的 `npm.cmd` |
| `lua` 找不到 | 在 `config.json` 中把 `luaPath` 改成实际解释器路径 |
| `jass.common` 找不到 | 若是普通 Lua/Code Runner 报错，应通过 KKWE 启动地图；若在游戏中报错，要检查 Lua 运行时加载 |
| 日志只有 `Waiting for Warcraft Lua startup...` | 只能说明启动脚本已执行，不能证明地图 Lua 启动；需排查游戏加载、KKWE 注入与日志写入 |
| 出现 `W3_MF_BOOT`，没有 `W3_MF_GAME_READY` | 已进入 Lua，但 MVP 初始化未完成；查找 `LUA_ERROR` 和最后一条阶段标记 |
| 出现 `W3_MF_GAME_READY` | Lua MVP 已启动；选择难度后应继续出现 `W3_MF_WAVES_STARTED` 和 `W3_MF_WAVE` |
| 启动后报没有匹配的 Warcraft 进程 | 启动器返回值已按 PID 检查，进程不存在时会报告失败；检查游戏是否退出或启动配置是否正确 |
| 游戏开了但代码没变化 | 先保存源码，退出旧测试实例，再重新构建测试；当前没有热更新 |

不要通过直接双击地图、原版 `war3.exe` 或普通 Lua 解释器来替代此工程的 KKWE 测试链。当前构建包含开发机日志绝对路径，也没有发布构建模式，不应直接把测试产物当作正式发布包。

## 8. 配置与迁移

本机配置在 `config.json`：

| 配置项 | 用途 |
| --- | --- |
| `gamePath` | 检查可执行文件与注册表安装目录一致，并据此部署测试地图；KKWE 仍按自身安装检测启动，不能只改这里就保证切换游戏版本 |
| `kkwePath` | KKWE 工具目录 |
| `w2lPath` | w3x2lni 打包器路径 |
| `luaPath` | 本地语法检查解释器路径或命令名 |
| `mapSource` | 地图源目录，默认 `map` |
| `output` | 输出地图路径 |

相对路径以项目根目录为基准。KKWE 实际使用的游戏目录还需与它自己的配置/安装检测结果一致。

`.tools/` 被 Git 忽略，换电脑后仅拉取工程代码不会自动获得工具链。目前也没有一键工具安装脚本。当前工具和初始地图来自 [wc3-map-ts-template](https://github.com/eiriksgata/wc3-map-ts-template) 的 `simple` 分支，下载时提交为 `f6c077f1ac8f6c239b9659d4b6fd6b9100ed3033`；保留的模板许可证位于 `tools/TEMPLATE-LICENSE`，第三方工具还应遵循各自许可证。

## 9. Git 管理

仓库地址：[23213dsasdasdasda/War3_base](https://github.com/23213dsasdasdasda/War3_base)。默认分支为 `main`。

日常提交改动：

```powershell
cd G:\轮回仙帝lua项目
git status
git add .
git diff --cached --stat
git commit -m "Describe your change"
git push
```

提交前检查内容，主要保留 `src/`、`map/`、`scripts/`、`.vscode/`、配置和文档。生成目录、运行日志和本地工具已被 `.gitignore` 排除。换电脑克隆后，需要另行准备 `.tools/` 中的工具链并调整 `config.json`，详见第 8 节。

## 10. F6 验证状态

1. 项目专用 F6 扩展已安装。
2. 已修正 KKWE 返回值判断，检查注册表游戏目录，并将测试图部署到游戏的 `Maps/W3MF/`。
3. 当前 MoeHero 风格 MVP 已接入开局初始化、杨戬物编模型、初始任务、难度面板和周期刷怪；仍需按 F6 确认游戏内模型、迷雾和任务表现。

API 补全、Git、热更新、TypeScriptToLua 和完整技能框架属于后续扩展，不是已完成事项。

## 11. 生成文件与清理

正常构建成功后只保留：

```text
build/main.lua                 合并后的 Lua，便于排查生成代码
dist/W3_MF_Test.w3x            可测试地图
logs/runtime.log              最近一次游戏运行日志
logs/last-test.json            最近一次测试记录
```

打包用的 `build/map/` 成功后自动删除；如果打包失败，保留现场便于排查。F6 扩展安装成功后也会删除其暂存目录和 VSIX。之前的 `diagnostic-*`、`verify-map/` 和 npm 缓存已清理，不参与正常开发。

需要重新生成构建产物时：

```powershell
cd G:\轮回仙帝lua项目
npm.cmd run clean
npm.cmd run build
```

`clean` 只删除项目内的 `build/`、`dist/`、`.npm-cache/`，保留源码、源地图、第三方工具、已安装的 F6 扩展和运行日志。不要在构建或安装扩展的同时运行清理。游戏目录里的测试副本不在此清理范围内，下次测试会覆盖它。
