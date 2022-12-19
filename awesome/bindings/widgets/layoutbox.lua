local awful = require("awful")

return {
    buttons = {
        awful.button{
            modifiers   = {},
            button      = 1,
            on_press    = function() awful.layout.inc(1) end,
        },
        awful.button{
            modifiers   = {},
            button      = 3,
            on_press    = function() awful.layout.inc(-1) end,
        },
    }
}