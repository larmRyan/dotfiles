"""
Definitions for the qtile bar and widgets, empty for no bar enabled
"""
from libqtile.config import Screen
from modules.bar import top_bar

wallpaper_config = dict(
  wallpaper="/home/johann/pictures/wallpapers/wallpaper2.jpg",
  wallpaper_mode="fill",
)

screens = [
  Screen(
    top = top_bar
    **wallpaper_config,
  ),
  Screen(
    **wallpaper_config,
  )
]