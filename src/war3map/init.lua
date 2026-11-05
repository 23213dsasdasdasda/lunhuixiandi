-- Shared private native environment for the translated map Lua modules.
print('W3_MF_WAR3MAP_INIT_BEGIN')
print('W3_MF_WAR3_API_BEGIN')
local war3 = require 'core.War3API'
print('W3_MF_WAR3_API_READY')
local common = war3.common
local globalEnvironment = _G
local moduleEnvironment = {}
local commonLookupLogged = false
local commonLookupCompleted = false

moduleEnvironment.__jarray = function(defaultValue)
    return setmetatable({}, { __index = function() return defaultValue end })
end

setmetatable(moduleEnvironment, {
    __index = function(environment, key)
        if not commonLookupLogged then
            commonLookupLogged = true
            print('W3_MF_COMMON_LOOKUP_BEGIN ' .. tostring(key))
        end
        -- Use the original jass.common table as the lookup receiver. Its native
        -- metatable may depend on `self`; invoking __index manually with this
        -- private environment can stall during the first translated global.
        local value = common[key]
        if not commonLookupCompleted then
            commonLookupCompleted = true
            print('W3_MF_COMMON_LOOKUP_READY ' .. tostring(key) .. ' ' .. type(value))
        end
        if value ~= nil then return value end
        return globalEnvironment[key]
    end,
})
print('W3_MF_PRIVATE_ENV_READY')

moduleEnvironment.ExecuteFunc = function(name)
    local callback = moduleEnvironment[name]
    if type(callback) ~= 'function' then
        error('Unknown translated map function: ' .. tostring(name), 2)
    end
    return callback()
end

local sections = {
    "war3map.runtime.blizzard_globals",
    "war3map.runtime.blizzard",
    "war3map.state",
    "war3map.libraries.ydwe",
    "war3map.libraries.dzapi",
    "war3map.libraries.map_systems",
    "war3map.triggers.bootstrap",
    "war3map.triggers.items",
    "war3map.triggers.combat",
    "war3map.triggers.hero_skills",
    "war3map.triggers.quests",
    "war3map.triggers.misc",
    "war3map.triggers.world",
    "war3map.triggers.hero_selection",
    "war3map.triggers.ui",
    "war3map.triggers.platform",
    "war3map.map_entry",
}
for _, name in ipairs(sections) do
    print('W3_MF_SECTION_BEGIN ' .. name)
    local install = require(name)
    print('W3_MF_SECTION_REQUIRED ' .. name)
    install(moduleEnvironment)
    print('W3_MF_SECTION_READY ' .. name)
end
print('W3_MF_WAR3MAP_MODULES_READY')

return { main = moduleEnvironment.main, config = moduleEnvironment.config }
