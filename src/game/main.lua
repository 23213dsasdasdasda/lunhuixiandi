local common = require 'core.War3API'.common
local Player = require 'core.Player'
local Init = require 'game.init'
local Difficulty = require 'game.difficulty'
local Waves = require 'game.waves'

local Game = {}

function Game.start()
    local player = Player.new(0)
    Init.start(player)
    local x = common.GetStartLocationX(0)
    local y = common.GetStartLocationY(0)

    common.SetCameraBounds(-12288, -12160, 20480, 20096, -12288, 20096, 20480, -12160)

    local hero = player:create_unit('YJ03', x, y, 270)
    if hero == nil then
        error('无法创建杨戬英雄 YJ03；请检查地图物编和导入模型')
    end
    hero:retain()

    hero:select()
    common.PanCameraToTimed(x, y, 0)
    print('W3_MF_HERO_READY', x, y)

    Difficulty.show(player, function(selectedDifficulty)
        Waves.start(hero, selectedDifficulty, player)
    end)
end

return Game
