local common = require 'core.War3API'.common

local War3UI = {}

local apiModules = {}
for _, moduleName in ipairs({ 'jass.japi', 'jass.dzapi' }) do
    local ok, module = pcall(require, moduleName)
    if ok and type(module) == 'table' then
        apiModules[#apiModules + 1] = module
    end
end

function War3UI.native(name)
    local native = common[name]
    if type(native) == 'function' then return native end
    for _, module in ipairs(apiModules) do
        native = module[name]
        if type(native) == 'function' then return native end
    end
    if type(_G[name]) == 'function' then return _G[name] end
    return nil
end

function War3UI.missing(names)
    local missing = {}
    for _, name in ipairs(names) do
        if not War3UI.native(name) then
            missing[#missing + 1] = name
        end
    end
    return missing
end

function War3UI.has(names)
    return #War3UI.missing(names) == 0
end

function War3UI.call(name, ...)
    local native = War3UI.native(name)
    if not native then error('Warcraft UI API is unavailable: ' .. name) end
    return native(...)
end

return War3UI
