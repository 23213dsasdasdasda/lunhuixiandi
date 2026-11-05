local common = require 'core.War3API'.common
local Player = require 'core.Player'
local Rawcode = require 'core.Rawcode'
local Timer = require 'core.Timer'
local Trigger = require 'core.Trigger'
local QuestHUD = require 'game.quest_hud'

local OriginalQuest = {}
OriginalQuest.__index = OriginalQuest

local hostilePlayer = Player.new(12)
local crabType = Rawcode('xsg1')
local wolfType = Rawcode('xsg2')
local crabCenterX, crabCenterY = -5600, 231
local wolfSpawnX, wolfSpawnY = -4348, -221
local returnX, returnY = -4400, -185

local function stageLabel(step)
    if step == 1 then return 'W3_MF_ORIGINAL_QUEST_CRABS' end
    if step == 2 then return 'W3_MF_ORIGINAL_QUEST_WOLF' end
    return 'W3_MF_ORIGINAL_QUEST_CULTIVATION'
end

function OriginalQuest:_set_hud(dialogue, objective)
    self.dialogue = dialogue
    self.objective = objective
    QuestHUD.update(self.hud, dialogue, objective)
end

function OriginalQuest:_spawn_monster(unitType, x, y, facing)
    local monster = hostilePlayer:create_unit(unitType, x, y, facing or 270)
    if not monster then
        print('W3_MF_ORIGINAL_QUEST_CREATE_FAILED', unitType)
        return nil
    end

    monster:retain()
    local deathTrigger
    deathTrigger = Trigger.onUnitDeath(monster.handle, function()
        local killer = common.GetKillingUnit()
        if killer and common.GetOwningPlayer(killer) == self.player.handle then
            self:_on_kill(common.GetUnitTypeId(monster.handle))
        end
        Trigger.destroy(deathTrigger)
        monster:release()
    end)

    if not deathTrigger then
        monster:release()
        return monster
    end

    monster:attack(self.hero:get_position())
    return monster
end

function OriginalQuest:_spawn_crabs()
    for index = 1, 10 do
        local angle = (index - 1) * math.pi * 2 / 10
        local radius = index % 2 == 0 and 330 or 250
        local x = crabCenterX + math.cos(angle) * radius
        local y = crabCenterY + math.sin(angle) * radius
        self:_spawn_monster('xsg1', x, y, 270)
    end
    print('W3_MF_ORIGINAL_QUEST_SPAWNED', 'xsg1', 10, crabCenterX, crabCenterY)
end

function OriginalQuest:_spawn_wolf()
    self:_spawn_monster('xsg2', wolfSpawnX, wolfSpawnY, 270)
    print('W3_MF_ORIGINAL_QUEST_SPAWNED', 'xsg2', 1, wolfSpawnX, wolfSpawnY)
end

function OriginalQuest:_give_seal_stone()
    local x, y = self.hero:get_position()
    local item = common.CreateItem(Rawcode('xsw1'), x, y)
    if item then
        common.UnitAddItem(self.hero.handle, item)
        common.SetItemCharges(item, 500)
        print('W3_MF_ORIGINAL_QUEST_REWARD', 'xsw1', 500)
    end
end

function OriginalQuest:_on_kill(unitType)
    if unitType == crabType and self.step == 1 then
        self.crabKills = math.min(self.crabKills + 1, 10)
        self:_set_hud(
            '助手：最近喝水一股海鲜味,肯定是池塘里的螃蟹太多了,是时候净化一下水质了。',
            ('任务目标：|n螃蟹：(%d/10)'):format(self.crabKills)
        )
        print('W3_MF_ORIGINAL_QUEST_PROGRESS', 'xsg1', self.crabKills, 10)
        if self.crabKills == 10 then
            self.step = 2
            self:_give_seal_stone()
            self.hero:move_to(returnX, returnY)
            if common.GetLocalPlayer() == self.player.handle then
                common.PanCameraToTimed(returnX, returnY, 0)
            end
            self:_set_hud(
                '仙子：听说最近村里出了个白眼狼,吃了不少人了,快去把它除掉！',
                '任务目标：|n白眼狼：(0/1)'
            )
            common.DisplayTimedTextToPlayer(
                self.player.handle, 0, 0, 5,
                '仙子：听说最近村里出了个白眼狼,吃了不少人了,快去把它除掉！'
            )
            print(stageLabel(self.step))
            Timer.after(0.5, function() self:_spawn_wolf() end)
        end
        return
    end

    if unitType == wolfType then
        if self.step ~= 2 then
            common.DisplayTimedTextToPlayer(
                self.player.handle, 0, 0, 5,
                '还是先帮仙子除掉池塘的大闸蟹吧……'
            )
            return
        end

        self.step = 3
        self.wolfKills = 1
        common.UnitAddAbility(self.hero.handle, Rawcode('XTG1'))
        self:_set_hud(
            '仙子：现在点击修为历练NPC进行一次修炼吧！',
            '任务目标：|n修为历练NPC,进行修炼'
        )
        common.DisplayTimedTextToPlayer(
            self.player.handle, 0, 0, 5,
            '仙子：现在点击修为历练NPC进行一次修炼吧！'
        )
        print(stageLabel(self.step))
        if self.onCultivationStep then self.onCultivationStep() end
    end
end

function OriginalQuest.start(player, hero, onCultivationStep)
    local self = setmetatable({
        player = player,
        hero = hero,
        step = 1,
        crabKills = 0,
        wolfKills = 0,
        onCultivationStep = onCultivationStep,
    }, OriginalQuest)

    local dialogue = '助手：最近喝水一股海鲜味,肯定是池塘里的螃蟹太多了,是时候净化一下水质了。'
    local objective = '任务目标：|n螃蟹：(0/10)'
    self.hud = QuestHUD.attach(player, dialogue, objective)
    self.dialogue = dialogue
    self.objective = objective
    common.DisplayTimedTextToPlayer(player.handle, 0, 0, 6, dialogue)
    print('W3_MF_ORIGINAL_QUEST_READY')
    print(stageLabel(self.step))
    self:_spawn_crabs()
    return self
end

return OriginalQuest
