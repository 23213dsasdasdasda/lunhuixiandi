local dbg = require 'jass.debug'
local War3API = require 'core.War3API'
local common = War3API.common
local con = require 'jass.console'
local api = setmetatable({}, { __index = getmetatable(common).__index })
local write = con.write

con.enable = true

local typeList = {
    { '+loc', '点总数' },
    { '+EIP', '特效I总数' },
    { '+EIm', '特效II总数' },
    { '+tmr', '计时器总数' },
    { 'item', '物品总数' },
    { '+w3u', '单位总数' },
    { '+grp', '单位组' },
    { '+dlb', '按钮' },
    { '+dlg', '对话框' },
    { '+w3d', '破坏物' },
    { '+rev', 'event' },
    { 'alvt', 'event' },
    { 'bevt', 'event' },
    { 'devt', 'event' },
    { 'gevt', 'event' },
    { 'gfvt', 'event' },
    { 'pcvt', 'event' },
    { 'pevt', 'event' },
    { 'psvt', 'event' },
    { 'tmet', 'event' },
    { 'tmvt', 'event' },
    { 'uevt', 'event' },
    { '+flt', 'filter' },
    { '+fgm', 'fogmodifier' },
    { '+frc', 'force' },
    { 'ghth', 'hashtable' },
    { '+mdb', 'multiboard' },
    { '+ply', 'player' },
    { '+rct', '矩形区域' },
    { '+agr', '范围' },
    { '+snd', 'sound' },
    { '+tid', '计时器窗口' },
    { '+trg', 'trigger' },
    { '+tac', 'triggeraction' },
    { 'tcnd', '触发条件' },
}

local typeMap = {}
for _, entry in ipairs(typeList) do
    typeMap[entry[1]] = entry[2]
end

local function displayJassObjects()
    local count = dbg.handlemax()
    local types = {}
    local allCount = 0

    for i = 1, count do
        local info = dbg.handledef(0x100000 + i)
        if info and info.type then
            local label = typeMap[info.type] or ''
            types[label] = (types[label] or 0) + 1
            allCount = allCount + 1
        end
    end

    write('--------------start------------')
    for kind, total in pairs(types) do
        write('类型', kind, '数量', total)
    end
    write('统计数量', allCount, '底层获取数量', dbg.handlecount())
    write('--------------end------------')
    write('')
end

local trigger = api.CreateTrigger()
for i = 0, 15 do
    api.TriggerRegisterPlayerEvent(trigger, api.Player(i), api.EVENT_PLAYER_END_CINEMATIC)
end
api.TriggerAddAction(trigger, displayJassObjects)

return {
    trigger = trigger,
    display = displayJassObjects,
}
