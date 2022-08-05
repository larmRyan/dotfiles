"""
Definitions for the qtile bar and widgets, empty for no bar enabled
"""
from libqtile.config import Screen

wallpaper_config = dict(
  wallpaper="/home/johann/pictures/wallpapers/wallpaper2.jpg",
  wallpaper_mode="fill",
)

# TODO: Find way to get number of screens then dynamically create Screens
screens = [
  Screen(
    **wallpaper_config,
  ),
  Screen(
    **wallpaper_config,
  )
]