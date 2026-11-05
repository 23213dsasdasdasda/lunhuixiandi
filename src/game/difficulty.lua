local Dialog = require 'core.Dialog'
local Trigger = require 'core.Trigger'
local War3UI = require 'core.War3UI'
local common = require 'core.War3API'.common

local Difficulty = {}
local activeDialogs = {}
local activePanels = {}

local syncPrefix = 'W3MF_DIFFICULTY'

local frameApis = {
    'DzGetGameUI',
    'DzCreateFrameByTagName',
    'DzFrameSetSize',
    'DzFrameSetPoint',
    'DzFrameSetAbsolutePoint',
    'DzFrameSetTexture',
    'DzFrameSetText',
    'DzFrameSetTextAlignment',
    'DzFrameSetFont',
    'DzFrameShow',
    'DzFrameSetScriptByCode',
    'DzSyncData',
    'DzTriggerRegisterSyncData',
    'DzGetTriggerSyncPlayer',
    'DzGetTriggerSyncData',
}

local function destroyPanel(state)
    local destroyFrame = War3UI.native('DzDestroyFrame')
    if destroyFrame then
        destroyFrame(state.root)
    else
        War3UI.call('DzFrameShow', state.root, false)
    end
    for index = #activePanels, 1, -1 do
        if activePanels[index] == state then
            table.remove(activePanels, index)
            break
        end
    end
end

local ranks = {
    { label = '黑铁', color = 'a0a0a0' },
    { label = '青铜', color = 'cd7f32' },
    { label = '白银', color = 'e0e0e0' },
    { label = '黄金', color = 'ffd700' },
    { label = '铂金', color = '66e0d2' },
    { label = '钻石', color = '3aa3ff' },
    { label = '大师', color = 'b36bff' },
    { label = '王者', color = 'ff4d4d' },
    { label = '巅峰', color = 'ff66cc' },
}

local choices = {}
for level, rank in ipairs(ranks) do
    choices[level] = {
        level = level,
        label = rank.label,
        color = rank.color,
        display = '|cff' .. rank.color .. rank.label .. '|r',
        interval = math.max(4, 11 - level),
        count = math.min(5, 1 + math.floor((level - 1) / 2)),
    }
end

local function createCustomPanel(player, onSelect)
    local missing = War3UI.missing(frameApis)
    if #missing > 0 then
        print('W3_MF_DIFFICULTY_DZ_API_MISSING', table.concat(missing, ','))
        return false
    end

    local root = War3UI.call(
        'DzCreateFrameByTagName', 'BACKDROP', 'W3MF_DifficultyRoot',
        War3UI.call('DzGetGameUI'), 'template', 0
    )
    if root == nil or root == 0 then return false end

    War3UI.call('DzFrameSetSize', root, 0.32, 0.58)
    War3UI.call('DzFrameSetAbsolutePoint', root, 4, 0.40, 0.30)
    War3UI.call('DzFrameSetTexture', root, 'war3mapImported\\UI_heisedi.tga', 0)

    local title = War3UI.call(
        'DzCreateFrameByTagName', 'TEXT', 'W3MF_DifficultyTitle', root, 'template', 0
    )
    War3UI.call('DzFrameSetSize', title, 0.32, 0.05)
    War3UI.call('DzFrameSetPoint', title, 4, root, 4, 0, 0.235)
    War3UI.call('DzFrameSetTextAlignment', title, 4)
    War3UI.call('DzFrameSetFont', title, 'war3mapImported\\text.ttf', 0.020, 0)
    War3UI.call('DzFrameSetText', title, '|cffffd76a请选择难度|r')

    local state = {
        root = root,
        player = player,
        selected = false,
        submitted = false,
    }

    local syncTrigger = Trigger.onSyncData(syncPrefix, function(syncPlayer, data)
        if state.selected or syncPlayer ~= player.handle then return end
        local index = tonumber(data)
        local choice = index and choices[index]
        if not choice then return end

        state.selected = true
        Trigger.destroy(state.syncTrigger)
        state.syncTrigger = nil
        destroyPanel(state)
        print('W3_MF_DIFFICULTY_SELECTED', choice.label)
        onSelect(choice)
    end)

    if not syncTrigger then
        print('W3_MF_DIFFICULTY_SYNC_REGISTER_FAILED')
        local destroyFrame = War3UI.native('DzDestroyFrame')
        if destroyFrame then destroyFrame(root) else War3UI.call('DzFrameShow', root, false) end
        return false
    end
    state.syncTrigger = syncTrigger

    for index, choice in ipairs(choices) do
        local selectedIndex = index
        local selectedChoice = choice
        local yPosition = 0.17 - (index - 1) * 0.046
        local visual = War3UI.call(
            'DzCreateFrameByTagName', 'BACKDROP', 'W3MF_DifficultyButtonArt' .. index,
            root, 'template', index
        )
        War3UI.call('DzFrameSetSize', visual, 0.19, 0.042)
        War3UI.call('DzFrameSetPoint', visual, 4, root, 4, 0, yPosition)
        War3UI.call('DzFrameSetTexture', visual, 'war3mapImported\\w3mf_difficulty_button.tga', 0)

        local button = War3UI.call(
            'DzCreateFrameByTagName', 'BUTTON', 'W3MF_DifficultyClick' .. index,
            root, 'template', index
        )
        War3UI.call('DzFrameSetSize', button, 0.19, 0.042)
        War3UI.call('DzFrameSetPoint', button, 4, visual, 4, 0, 0)
        War3UI.call('DzFrameSetScriptByCode', button, 1, function()
            if state.submitted or state.selected then return end
            if common.GetLocalPlayer() ~= player.handle then return end
            state.submitted = true
            War3UI.call('DzSyncData', syncPrefix, tostring(selectedIndex))
        end, false)

        local label = War3UI.call(
            'DzCreateFrameByTagName', 'TEXT', 'W3MF_DifficultyLabel' .. index,
            root, 'template', index
        )
        War3UI.call('DzFrameSetSize', label, 0.19, 0.040)
        War3UI.call('DzFrameSetPoint', label, 4, visual, 4, 0, 0)
        War3UI.call('DzFrameSetTextAlignment', label, 4)
        War3UI.call('DzFrameSetFont', label, 'war3mapImported\\text.ttf', 0.018, 0)
        War3UI.call('DzFrameSetText', label, selectedChoice.display)
    end

    War3UI.call('DzFrameShow', root, common.GetLocalPlayer() == player.handle)
    activePanels[#activePanels + 1] = state
    print('W3_MF_DIFFICULTY_FRAME_READY')
    print('W3_MF_DIFFICULTY_LAYOUT_CENTER_VERTICAL')
    return true
end

local function createDialog(player, onSelect)
    local dialog = Dialog.new(player, '请选择难度')

    for _, choice in ipairs(choices) do
        local selectedChoice = choice
        dialog:add_button(selectedChoice.display, function()
            print('W3_MF_DIFFICULTY_SELECTED', selectedChoice.label)
            onSelect(selectedChoice)
        end)
    end

    activeDialogs[#activeDialogs + 1] = dialog
    dialog:show()
    print('W3_MF_DIFFICULTY_NATIVE_DIALOG_FALLBACK')
    print('W3_MF_DIFFICULTY_DIALOG_READY')
end

function Difficulty.show(player, onSelect)
    local ok, shown = pcall(createCustomPanel, player, onSelect)
    if not ok then
        print('W3_MF_DIFFICULTY_UI_ERROR', tostring(shown))
        shown = false
    end
    if not shown then
        createDialog(player, onSelect)
    end
    print('W3_MF_DIFFICULTY_READY')
end

return Difficulty
