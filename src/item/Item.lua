local War3API = require 'core.War3API'
local war3 = War3API.common
local rawcode = require 'core.Rawcode'
local Item = {}

function Item.give(unit, id)
    local item = war3.CreateItem(rawcode(id), war3.GetUnitX(unit), war3.GetUnitY(unit))
    if not war3.UnitAddItem(unit, item) then
        war3.RemoveItem(item)
        error('Unit inventory is full or unavailable')
    end
    return item
end

return Item
