local common = require 'core.War3API'.common
local debug = require 'jass.debug'

local Unit = {}
Unit.__index = Unit

function Unit.new(handle)
    if handle == nil or handle == 0 then return nil end
    return setmetatable({ handle = handle }, Unit)
end

function Unit:get_position()
    return common.GetUnitX(self.handle), common.GetUnitY(self.handle)
end

function Unit:move_to(x, y)
    return common.SetUnitPosition(self.handle, x, y)
end

function Unit:attack(x, y)
    return common.IssuePointOrder(self.handle, 'attack', x, y)
end

function Unit:select()
    common.ClearSelection()
    common.SelectUnit(self.handle, true)
end

function Unit:retain()
    if not self.retained then
        debug.handle_ref(self.handle)
        self.retained = true
    end
    return self
end

function Unit:release()
    if self.retained then
        debug.handle_unref(self.handle)
        self.retained = false
    end
end

return Unit
