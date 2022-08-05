"""
Keys/mouse click definitions
"""

from libqtile.command import lazy
from libqtile.config import EzClick, EzDrag, EzKey
from libqtile import qtile

from modules.apps import apps
from modules.utils import volume, music_control, screenshot
from modules.groups import groups
import os

EzKey.modifier_keys = {
  "M": "mod4",
  "A": "mod1",
  "S": "shift",
  "C": "control",
}

mouse = [
  EzDrag("M-<Button1>", lazy.window.set_position_floating(), start=lazy.window.get_position()),
  EzDrag("M-<Button3>", lazy.window.set_size_floating(),start=lazy.window.get_size()),
  EzDrag("M-<Button2>", lazy.window.bring_to_front())
]

window_navigation = [
  EzKey("M-h", lazy.layout.left()),
  EzKey("M-l", lazy.layout.right()),
  EzKey("M-j", lazy.layout.down()),
  EzKey("M-k", lazy.layout.up()),
]

window_displacement = [
  EzKey("M-<Tab>", lazy.layout.next()),
  EzKey("M-S-<Tab>", lazy.layout.previous()),
  EzKey("M-<Return>", lazy.layout.swap_main()),
  EzKey("M-S-h", lazy.layout.swap_left(), lazy.layout.shuffle_left()),
  EzKey("M-S-j", lazy.layout.swap_down(), lazy.layout.shuffle_down()),
  EzKey("M-S-k", lazy.layout.swap_up(), lazy.layout.shuffle_up()),
  EzKey("M-S-l", lazy.layout.swap_right(), lazy.layout.shuffle_right()),
]

window_size_control = [
  EzKey("M-C-h", lazy.layout.grow_left()),
  EzKey("M-C-j", lazy.layout.grow_down()),
  EzKey("M-C-k", lazy.layout.grow_up()),
  EzKey("M-C-l", lazy.layout.grow_right()),
  EzKey("M-C-n", lazy.layout.normalize()),  # Restore to original size
]

toggles = [
  EzKey("M-S-w", lazy.window.kill()),
  EzKey("M-<space>", lazy.next_layout()),
  EzKey("M-s", lazy.window.toggle_floating()),
  EzKey("M-f", lazy.window.toggle_fullscreen()),
]

qtile_controls = [
  EzKey("M-S-r", lazy.restart()),
  EzKey("M-S-q", lazy.shutdown()),
]

rofi_spawns = [
  EzKey("A-d", lazy.spawn("rofi -show drun")),
  EzKey("A-q", lazy.spawn("rofi -show drun")),
]

application_spawns = [
  EzKey("A-<Return>", lazy.spawn(apps["terminal"])),
  EzKey("A-v", lazy.spawn(apps["code_editor"])),
  EzKey("A-n", lazy.spawn(apps["text_editor"])),
  EzKey("A-m", lazy.spawn(apps["local_music_player"])),
  EzKey("A-s", lazy.spawn(apps["streaming_music_player"])),
  EzKey("A-b", lazy.spawn(apps["web_browser"])),
  EzKey("A-f", lazy.spawn(apps["file_manager"])),
  EzKey("A-S-f", lazy.spawn("thunar")),
]

audio_controls = [
  EzKey("<XF86AudioMute>", volume("toggle")),
  EzKey("<XF86AudioRaiseVolume>", volume("increase")),
  EzKey("<XF86AudioLowerVolume>", volume("decrease")),
]

media_controls = [
  EzKey("<XF86AudioNext>", music_control("next")),
  EzKey("<XF86AudioPrev>", music_control("prev")),
  EzKey("<XF86AudioPlay>", music_control("toggle")),
]

screenshot_controls = [
  EzKey("<Print>", screenshot("area")),
  EzKey("M-<Print>", screenshot("full")),
]

keys = [
  *window_navigation,
  *window_displacement,
  *window_size_control,
  *toggles,
  *qtile_controls,
  *rofi_spawns,
  *application_spawns,
  *audio_controls,
  *media_controls,
  *screenshot_controls,
]

#Force qtile to use more conventional workspaces
def go_to_group(name):
  def _inner(qtile):
    if name in "12345":
      qtile.focus_screen(0)
    else:
      qtile.focus_screen(1)
    qtile.groups_map[name].cmd_toscreen()
  return _inner

# Keybinds to change/move workspaces
for i in groups:
  keys.extend(
    [
      EzKey("M-%s" % i.name, lazy.function(go_to_group(i.name))),
      EzKey("M-S-%s" % i.name, lazy.window.togroup(i.name)),
    ]
  )

