from modules.keybindings import keys, mouse
from modules.layouts import floating_layout, layouts
from modules.groups import groups
from modules.screens import screens
import modules.hooks

assert keys
assert mouse
assert floating_layout
assert groups
assert layouts
assert screens

auto_fullscreen = True
auto_minimize = False
bring_front_click = True
focus_on_window_activation = True
follow_mouse_focus = True
wmname = "Qtile"
