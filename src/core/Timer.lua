local jass = require 'jass.common'
local Timer = {}

function Timer.after(seconds, callback)
    local timer = jass.CreateTimer()
    jass.TimerStart(timer, seconds, false, function()
        jass.DestroyTimer(timer)
        callback()
    end)
end

-- Returns a cancellation function. Call it when the owning system is disposed.
function Timer.every(seconds, callback)
    assert(seconds > 0, 'Timer interval must be positive')
    local timer = jass.CreateTimer()
    local active = true
    jass.TimerStart(timer, seconds, true, callback)
    return function()
        if active then
            active = false
            jass.PauseTimer(timer)
            jass.DestroyTimer(timer)
        end
    end
end

return Timer
