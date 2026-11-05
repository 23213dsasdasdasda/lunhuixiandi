local common = require 'core.War3API'.common
local debug = require 'jass.debug'
local War3UI = require 'core.War3UI'

local Trigger = {}

function Trigger.create(callback)
    local handle = common.CreateTrigger()
    debug.handle_ref(handle)
    common.TriggerAddAction(handle, callback)
    return handle
end

function Trigger.onDialogButton(handle, button)
    common.TriggerRegisterDialogButtonEvent(handle, button)
    return handle
end

function Trigger.onUnitDeath(unitHandle, callback)
    local handle = Trigger.create(callback)
    -- EVENT_UNIT_DEATH is ConvertUnitEvent(53) in Warcraft III's common API.
    common.TriggerRegisterUnitEvent(handle, unitHandle, common.ConvertUnitEvent(53))
    return handle
end

function Trigger.onSyncData(prefix, callback)
    local register = War3UI.native('DzTriggerRegisterSyncData')
    local getPlayer = War3UI.native('DzGetTriggerSyncPlayer')
    local getData = War3UI.native('DzGetTriggerSyncData')
    if not register or not getPlayer or not getData then return nil end

    local handle = Trigger.create(function()
        callback(getPlayer(), getData())
    end)
    register(handle, prefix, false)
    return handle
end

function Trigger.destroy(handle)
    if handle ~= nil and handle ~= 0 then
        common.DestroyTrigger(handle)
        debug.handle_unref(handle)
    end
end

return Trigger
