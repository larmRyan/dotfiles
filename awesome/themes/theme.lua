local theme_assets      = require("beautiful.theme_assets")
local xresources        = require("beautiful.xresources")
local gfs               = require("gears.filesystem")
local themes_path       = gfs.get_themes_dir()
local dpi               = xresources.apply_dpi
local scheme            = require("themes.colorschemes.catppuccin_mocha")
local gears             = require("gears")
local wallpaper_dir     = "images/wallpapers/"
local wallpaper_path    = wallpaper_dir .. "lofi.jpg"

local theme = {}

theme.font = "FuraMono NF Medium 10"

-- Window manager colors
theme.bg_normal     = scheme.bg_1
theme.bg_focus      = scheme.bg_1
theme.bg_urgent     = scheme.bg_1
theme.bg_minimize   = scheme.bg_1
theme.bg_systray    = scheme.bg_1

theme.fg_normal     = scheme.fg_1
theme.fg_focus      = scheme.fg_1
theme.fg_urgent     = scheme.fg_1
theme.fg_minimize   = scheme.fg_1

-- Gap size
theme.useless_gap = dpi(10)

-- Disable borders
theme.border_width = dpi(0)

-- Taglist colors
theme.taglist_bg_focus      = scheme.special_1
theme.taglist_bg_urgent     = scheme.red
theme.taglist_bg_occupied   = scheme.bg_3
theme.taglist_bg_empty      = scheme.bg_1
theme.taglist_bg_volatile   = scheme.red

theme.taglist_fg_focus      = scheme.bg_1
theme.taglist_fg_urgent     = scheme.bg_1
theme.taglist_fg_occupied   = scheme.fg_1
theme.taglist_fg_empty      = scheme.fg_1
theme.taglist_fg_volatile   = scheme.bg_1

-- Titlebar colors
theme.titlebar_bg_focus     = scheme.magenta
theme.titlebar_bg_normal    = scheme.bg_3

theme.titlebar_fg_focus     = scheme.bg_1
theme.titlebar_fg_normal    = scheme.fg_1

-- Tooltips
theme.tooltip_fg_color      = scheme.fg_1
theme.tooltip_bg_color      = scheme.bg_1
theme.tooltip_border_color  = scheme.bg_3
theme.tooltip_border_width  = dpi(1)

-- Menu
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_bg_normal    = scheme.bg_1
theme.menu_fg_normal    = scheme.fg_1
theme.menu_bg_focus     = scheme.bg_3
theme.menu_fg_focus     = scheme.fg_1
theme.menu_border_color = scheme.bg_3

theme.menu_height       = dpi(20)
theme.menu_width        = dpi(200)
theme.menu_border_width = dpi(1)

-- Wallpaper
theme.wallpaper = gears.surface.load_uncached(gfs.get_configuration_dir() .. wallpaper_path)

--  Layout icons
theme.layout_floating       = themes_path .. "default/layouts/floatingw.png"
theme.layout_max            = themes_path .. "default/layouts/maxw.png"
theme.layout_tileleft       = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile           = themes_path .. "default/layouts/tilew.png"

theme.icon_theme = nil

return theme
