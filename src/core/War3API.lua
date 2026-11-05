-- Keep the Warcraft native binding behind one Lua-facing adapter.
local common = require 'jass.common'

return {
    common = common,
}
