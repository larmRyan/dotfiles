"""
Utility functions/scripts

Essentially my shell scripts rewritten into python for convienvence with qtile
"""

from libqtile.lazy import lazy
import os

@lazy.function
def screenshot(qtile, options):
  """
  Take a screenshot, either full workspace or select an area
  """
  file_location = "~/pictures/screenshots/"
  file_format = "png"
  name_format = "$(date +%s)." # Use the current date

  if options == "full":
    os.system("maim -u " + file_location + name_format + file_format)
  elif options == "area":
    os.system("maim -u -s " + file_location + name_format + file_format)

@lazy.function
def volume(qtile, options):
  """
  Increase/decrease volume or mute all audio
  """
  amount = "5"
  if options == "increase":
    os.system("pamixer -i " + amount)
  elif options == "decrease":
    os.system("pamixer -d " + amount)
  elif options == "toggle":
    os.system("pamixer -t")

@lazy.function
def music_control(qtile, options):
  """
  Select next or previous track or play/pause music. Will check players
  in order listed: mpd, spotify, firefox, any others
  """
  if options == "next":
    os.system("playerctl --player=mpd,spotify,firefox,%any next")
  elif options == "prev":
    os.system("playerctl --player=mpd,spotify,firefox,%any previous")
  elif options == "toggle":
    os.system("playerctl --player=mpd,spotify,firefox,%any play-pause")
