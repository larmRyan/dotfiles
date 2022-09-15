from libqtile import bar, widget
from modules.color_schemes.catppuccin_mocha import color_scheme as theme

top_bar = bar.Bar([
  widget.CurrentLayoutIcon(
    foreground = theme["fg"],
    background = theme["bg"],
  ),
  widget.GroupBox(
    active = theme["fg"],
    background = theme["bg"],
    font = 'Victor Mono',
    fontsize = 15,
    highlight_method = "text",
    inactive = theme["color0"],
    this_current_screen_border = theme["color5"],
  ),
  # widget.Spacer(),
  # widget.Mpd2(),
  widget.Spacer(
    background = theme["bg"],
  ),
  widget.PulseVolume(
    background = theme["bg"],
    foreground = theme["fg"],
    font = 'Victor Mono',
    fontsize = 15,
    get_volume_command = "pamixer --get-volume-human",
    max_chars = 4,
    mute_command = "pamixer --toggle-mute",
    volume_app = "pamixer",
    volume_down_command = "pamixer --decrease 2",
    volume_up_command = "pamixer --increase 2",
  ),
  widget.Clock(
    background = theme["bg"],
    foreground = theme["fg"],
    font = 'Victor Mono',
    fontsize = 15,
    padding = 20,
  ),
], 30)