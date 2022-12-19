local awful = require("awful")
local wibox = require("wibox")

local menu = require("widgets.menu")
local taglist = require("widgets.wibar.taglist")
local layoutbox = require("widgets.wibar.layoutbox")

return function(s)
    s.widgets = {
        layoutbox        = layoutbox(s),
        taglist          = taglist(s),
        systray          = wibox.widget.systray(),
        textclock        = wibox.widget.textclock(),
    }

    s.widgets.wibar = awful.wibar{
        screen = s,
        position = "top",
        widget = {
            layout = wibox.layout.align.horizontal,
            -- left widgets
            {
                layout = wibox.layout.fixed.horizontal,
                menu.launcher,
                s.widgets.taglist,
            },
            -- middle widgets
            {
                layout = wibox.layout.fixed.horizontal
            },
            -- right widgets
            {
                layout = wibox.layout.fixed.horizontal,
                s.widgets.systray,
                s.widgets.textclock,
                s.widgets.layoutbox,
            }
        }
    }
end
