local common = require 'core.War3API'.common
local Unit = require 'core.Unit'
local rawcode = require 'core.Rawcode'

local Player = {}
Player.__index = Player

function Player.new(id)
    return setmetatable({ id = id, handle = common.Player(id) }, Player)
end

function Player:create_unit(typeId, x, y, facing)
    local handle = common.CreateUnit(self.handle, rawcode(typeId), x, y, facing or 0)
    return Unit.new(handle)
end

return Player
