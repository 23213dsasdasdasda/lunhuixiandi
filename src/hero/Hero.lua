local War3API = require 'core.War3API'
local war3 = War3API.common
local rawcode = require 'core.Rawcode'
local Hero = {}
Hero.__index = Hero

function Hero.create(player, data)
    local handle = war3.CreateUnit(player, rawcode(data.id), data.x, data.y, data.facing)
    assert(handle ~= nil and handle ~= 0, 'CreateUnit failed: ' .. data.id)
    return setmetatable({ handle = handle, owner = player }, Hero)
end

function Hero:select()
    if war3.GetLocalPlayer() == self.owner then
        war3.ClearSelection()
        war3.SelectUnit(self.handle, true)
        war3.PanCameraToTimed(war3.GetUnitX(self.handle), war3.GetUnitY(self.handle), 0)
    end
end

return Hero
