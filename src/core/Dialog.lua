local common = require 'core.War3API'.common
local debug = require 'jass.debug'
local Trigger = require 'core.Trigger'

local Dialog = {}
Dialog.__index = Dialog

function Dialog.new(player, message)
    local handle = common.DialogCreate()
    debug.handle_ref(handle)
    common.DialogSetMessage(handle, message)
    return setmetatable({
        handle = handle,
        player = player,
        selected = false,
        buttons = {},
        triggers = {},
    }, Dialog)
end

function Dialog:add_button(label, callback)
    local button = common.DialogAddButton(self.handle, label, 0)
    debug.handle_ref(button)
    self.buttons[#self.buttons + 1] = button

    local trigger = Trigger.create(function()
        if self.selected then return end
        self.selected = true
        self:hide()
        callback()
    end)
    Trigger.onDialogButton(trigger, button)
    self.triggers[#self.triggers + 1] = trigger
end

function Dialog:show()
    common.DialogDisplay(self.player.handle, self.handle, true)
end

function Dialog:hide()
    common.DialogDisplay(self.player.handle, self.handle, false)
end

return Dialog
