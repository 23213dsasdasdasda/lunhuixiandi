local War3API = require 'core.War3API'
local war3 = War3API.common
local debug = require 'jass.debug'
local Timer = {}

function Timer.after(seconds, callback)
    local timer = war3.CreateTimer()
    debug.handle_ref(timer)
    war3.TimerStart(timer, seconds, false, function()
        war3.DestroyTimer(timer)
        debug.handle_unref(timer)
        callback()
    end)
end

-- Returns a cancellation function. Call it when the owning system is disposed.
function Timer.every(seconds, callback)
    assert(seconds > 0, 'Timer interval must be positive')
    local timer = war3.CreateTimer()
    debug.handle_ref(timer)
    local active = true
    war3.TimerStart(timer, seconds, true, callback)
    return function()
        if active then
            active = false
            war3.PauseTimer(timer)
            war3.DestroyTimer(timer)
            debug.handle_unref(timer)
        end
    end
end

Timer.loop = Timer.every

return Timer
