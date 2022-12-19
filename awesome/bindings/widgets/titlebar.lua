local awful = require("awful")

return {
    buttons = {
        awful.button{
            modifiers = {},
            button    = 1,
            on_press  = function()
                c:activate{context = "titlebar", action = "mouse_move"}
            end
        },
        awful.button{
            modifiers = {},
            button    = 3,
            on_press  = function()
                c:activate{context = "titlebar", action = "mouse_resize"}
            end
        },
    }
}