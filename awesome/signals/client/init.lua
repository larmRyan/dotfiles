local awful = require("awful")
require("awful.autofocus")
local wibox = require("wibox")
local buttons = require("bindings.widgets.layoutbox").buttons

-- Enable sloppy focus, focus follows mouse
client.connect_signal("mouse::enter", function(c)
    c:activate{context = "mouse_enter", raise = false}
end)

-- Make titlebars purely aesthetic and on the left side of the client
client.connect_signal("request::titlebars", function(c)
    awful.titlebar(c, {position = "left"}).widget = {
        layout = wibox.layout.align.vertical,
    }
end)