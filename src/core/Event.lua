local Event = {}
Event.__index = Event

function Event.new()
    return setmetatable({ listeners = {} }, Event)
end

function Event:on(callback)
    local listener = { callback = callback, active = true }
    table.insert(self.listeners, listener)
    return function()
        listener.active = false
        for i, entry in ipairs(self.listeners) do
            if entry == listener then
                table.remove(self.listeners, i)
                break
            end
        end
    end
end

function Event:emit(...)
    local snapshot = {}
    for i, listener in ipairs(self.listeners) do snapshot[i] = listener end
    for _, listener in ipairs(snapshot) do
        if listener.active then listener.callback(...) end
    end
end

return Event
