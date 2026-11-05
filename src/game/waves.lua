local Timer = require 'core.Timer'
local Trigger = require 'core.Trigger'
local Player = require 'core.Player'
local OriginalQuest = require 'game.original_quest'

local Waves = {}
local cancelCurrentWaveTimer
local creepPlayer = Player.new(12)

local function spawnRegularWave(hero, difficulty, wave)
    local heroX, heroY = hero:get_position()
    local spawnX, spawnY = heroX + 800, heroY

    for index = 1, difficulty.count do
        local offset = (index - (difficulty.count + 1) / 2) * 160
        local creep = creepPlayer:create_unit('f001', spawnX, spawnY + offset, 270)
        if creep then
            creep:retain()
            local deathTrigger
            deathTrigger = Trigger.onUnitDeath(creep.handle, function()
                Trigger.destroy(deathTrigger)
                creep:release()
                print('W3_MF_CREEP_KILLED', 'f001')
            end)
            if deathTrigger then
                creep:attack(heroX, heroY)
            else
                creep:release()
            end
        else
            print('W3_MF_CREEP_CREATE_FAILED', 'f001')
        end
    end

    print('W3_MF_WAVE', wave, difficulty.label, 'f001', difficulty.count)
end

function Waves.start(hero, difficulty, player)
    if cancelCurrentWaveTimer then
        cancelCurrentWaveTimer()
        cancelCurrentWaveTimer = nil
    end

    local wave = 0
    local function spawnWave()
        wave = wave + 1
        spawnRegularWave(hero, difficulty, wave)
    end

    OriginalQuest.start(player, hero, function()
        Timer.after(1, spawnWave)
        cancelCurrentWaveTimer = Timer.loop(difficulty.interval, spawnWave)
        print('W3_MF_WAVES_STARTED', difficulty.interval, difficulty.count, 'f001')
    end)
end

return Waves
