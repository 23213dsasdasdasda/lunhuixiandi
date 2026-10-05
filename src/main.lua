local jass = require 'jass.common'
local Timer = require 'core.Timer'
local Hero = require 'hero.Hero'
local HeroData = require 'data.HeroData'
local Item = require 'item.Item'

-- Run after Warcraft has completed map initialization.
Timer.after(0, function()
    local player = jass.Player(0)
    local hero = Hero.create(player, HeroData.paladin)
    Item.give(hero.handle, 'ratf')
    hero:select()
    jass.FogEnable(false)
    jass.FogMaskEnable(false)
    jass.DisplayTimedTextToPlayer(player, 0, 0, 60,
        '|cff80ff80W3 MF Lua ready!|r Edit src/main.lua, then press F6 in VS Code.')
    print('W3_MF_READY hero=' .. tostring(hero.handle))
end)
