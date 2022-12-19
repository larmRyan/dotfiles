local awful = require("awful")
local ruled = require("ruled")

local screen_width = awful.screen.focused().geometry.width
local screen_height = awful.screen.focused().geometry.height

ruled.client.connect_signal("request::rules", function()
    -- All clients will match this rule.
    ruled.client.append_rule{
        id          = "global",
        rule        = {},
        properties  = {
            focus       = awful.client.focus.filter,
            raise       = true,
            screen      = awful.screen.preferred,
            placement   = awful.placement.no_overlap + awful.placement.no_offscreen
        }
    }

    -- Add titlebars to normal clients and dialogs
    ruled.client.append_rule{
        id = "titlebars",
        rule_any = {type = {"normal", "dialog"}},
        properties = {titlebars_enabled = true},
    }

    ruled.client.append_rule{
        id = "floating",
        rule_any = {
            class = { "feh", "sxiv" }
        },
        properties = {
            floating = true,
            width = screen_width * 0.7,
            height = screen_height * 0.7,
        },

        -- callback gets called before the properties are applied
        -- so it might be a timing thing when the client is spawned
        callback = function(c)
            awful.placement.centered(c)
        end
    }
end)
