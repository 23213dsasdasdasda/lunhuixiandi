local jass = require 'jass.common'
local rawcode = require 'core.Rawcode'
local Item = {}

function Item.give(unit, id)
    local item = jass.CreateItem(rawcode(id), jass.GetUnitX(unit), jass.GetUnitY(unit))
    if not jass.UnitAddItem(unit, item) then
        jass.RemoveItem(item)
        error('Unit inventory is full or unavailable')
    end
    return item
end

return Item
