local common = require 'core.War3API'.common
local debug = require 'jass.debug'
local War3UI = require 'core.War3UI'

local Quest = {}
Quest.__index = Quest

function Quest.new(playerHandle, title, description, objectiveDescription)
    local handle = common.CreateQuest()
    debug.handle_ref(handle)

    common.QuestSetTitle(handle, title)
    common.QuestSetDescription(handle, description)
    common.QuestSetRequired(handle, true)
    common.QuestSetDiscovered(handle, true)
    common.QuestSetCompleted(handle, false)
    common.QuestSetFailed(handle, false)
    common.QuestSetEnabled(handle, true)

    local objective = common.QuestCreateItem(handle)
    debug.handle_ref(objective)
    common.QuestItemSetDescription(objective, objectiveDescription)
    common.QuestItemSetCompleted(objective, false)

    return setmetatable({
        handle = handle,
        objective = objective,
        player = playerHandle,
        title = title,
        objectiveDescription = objectiveDescription,
        completed = false,
    }, Quest)
end

function Quest:set_hud(titleFrame, objectiveFrame)
    self.hudTitleFrame = titleFrame
    self.hudObjectiveFrame = objectiveFrame
    self:refresh_hud()
end

function Quest:refresh_hud()
    local setText = War3UI.native('DzFrameSetText')
    if not setText then return end

    if self.completed then
        if self.hudTitleFrame then
            setText(self.hudTitleFrame, '|cffffff00任务完成：' .. self.title .. '|r')
        end
        if self.hudObjectiveFrame then
            setText(self.hudObjectiveFrame, '|cffb9ffb9已完成：' .. self.objectiveDescription .. '|r')
        end
        return
    end

    if self.hudTitleFrame then
        setText(self.hudTitleFrame, '|cffffd76a主线任务：' .. self.title .. '|r')
    end
    if self.hudObjectiveFrame then
        setText(self.hudObjectiveFrame, '|cffffffff' .. self.objectiveDescription .. '|r')
    end
end

function Quest:complete()
    if self.completed then return end
    self.completed = true
    common.QuestItemSetCompleted(self.objective, true)
    common.QuestSetCompleted(self.handle, true)
    self:refresh_hud()
    common.FlashQuestDialogButton()
    common.ForceQuestDialogUpdate()
    common.DisplayTimedTextToPlayer(self.player, 0, 0, 7, '|cffffff00任务完成：初入仙途|r')
    print('W3_MF_INITIAL_QUEST_COMPLETED')
end

return Quest
