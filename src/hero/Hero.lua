local jass = require 'jass.common'
local rawcode = require 'core.Rawcode'
local Hero = {}
Hero.__index = Hero

function Hero.create(player, data)
    local handle = jass.CreateUnit(player, rawcode(data.id), data.x, data.y, data.facing)
    assert(handle ~= nil and handle ~= 0, 'CreateUnit failed: ' .. data.id)
    return setmetatable({ handle = handle, owner = player }, Hero)
end

function Hero:select()
    if jass.GetLocalPlayer() == self.owner then
        jass.ClearSelection()
        jass.SelectUnit(self.handle, true)
        jass.PanCameraToTimed(jass.GetUnitX(self.handle), jass.GetUnitY(self.handle), 0)
    end
end

return Hero
