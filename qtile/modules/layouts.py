"""
Most used layouts, only supports Max, Monad Wide, Monad tall and floating
"""

from libqtile.command import lazy
from libqtile.config import EzKey, Match, Key
from libqtile import layout

from modules.themes import theme
from modules.groups import groups # ? Removing this line breaks everything
from modules.keybindings import keys

border_configuration = dict(
  border_focus = theme["color5"],
  border_normal = theme["color15"],
  border_width = 2,
  margin = 20,
  ratio = 0.6,
)

layouts = [
  layout.MonadTall(**border_configuration),
  layout.MonadWide(**border_configuration),
]

floating_layout = layout.Floating(
  **border_configuration,
  float_rules = [
    *layout.Floating.default_float_rules,
    Match(wm_class = "notification"), # TODO: Test dunst
  ],
)
