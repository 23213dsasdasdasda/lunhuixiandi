local common = require 'core.War3API'.common
local War3UI = require 'core.War3UI'

local QuestHUD = {}

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
}

function QuestHUD.attach(player, dialogue, objective)
    local missing = War3UI.missing(frameApis)
    if #missing > 0 then
        print('W3_MF_ORIGINAL_QUEST_DZ_API_MISSING', table.concat(missing, ','))
        return nil
    end

    local ok, state = pcall(function()
        local root = War3UI.call(
            'DzCreateFrameByTagName', 'BACKDROP', 'W3MF_OriginalQuestRoot',
            War3UI.call('DzGetGameUI'), 'template', 0
        )
        if root == nil or root == 0 then
            error('DzCreateFrameByTagName returned an empty original quest frame')
        end

        War3UI.call('DzFrameSetTexture', root, 'war3mapImported\\ui_sldy.tga', 0)
        War3UI.call('DzFrameSetAbsolutePoint', root, 5, 0.79, 0.30)
        War3UI.call('DzFrameSetSize', root, 0.45, 0.08)

        local dialogueFrame = War3UI.call(
            'DzCreateFrameByTagName', 'TEXT', 'W3MF_OriginalQuestDialogue', root,
            'template', 0
        )
        War3UI.call('DzFrameSetPoint', dialogueFrame, 4, root, 4, 0.02, -0.03)
        War3UI.call('DzFrameSetSize', dialogueFrame, 0.18, 0.12)
        War3UI.call('DzFrameSetFont', dialogueFrame, 'war3mapImported\\text.ttf', 0.013, 0)

        local objectiveFrame = War3UI.call(
            'DzCreateFrameByTagName', 'TEXT', 'W3MF_OriginalQuestObjective', root,
            'template', 0
        )
        War3UI.call('DzFrameSetPoint', objectiveFrame, 2, root, 2, -0.05, -0.01)
        War3UI.call('DzFrameSetSize', objectiveFrame, 0.30, 0.06)
        War3UI.call('DzFrameSetFont', objectiveFrame, 'war3mapImported\\text.ttf', 0.008, 0)
        War3UI.call('DzFrameSetTextAlignment', objectiveFrame, -10)

        local visible = common.GetLocalPlayer() == player.handle
        War3UI.call('DzFrameShow', root, visible)

        return {
            root = root,
            dialogue = dialogueFrame,
            objective = objectiveFrame,
            player = player.handle,
        }
    end)

    if not ok then
        print('W3_MF_ORIGINAL_QUEST_HUD_ERROR', tostring(state))
        return nil
    end

    QuestHUD.update(state, dialogue, objective)
    print('W3_MF_ORIGINAL_QUEST_HUD_READY')
    print('W3_MF_ORIGINAL_QUEST_HUD_LOCAL', common.GetLocalPlayer() == player.handle)
    return state
end

function QuestHUD.update(state, dialogue, objective)
    if not state or common.GetLocalPlayer() ~= state.player then return end
    War3UI.call('DzFrameSetText', state.dialogue, '|cff00ffff' .. dialogue .. '|r')
    War3UI.call('DzFrameSetText', state.objective, '|cff00ff00' .. objective .. '|r')
end

return QuestHUD
