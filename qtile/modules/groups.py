"""
Groups/workspaces, modeled after more traditional workspaces like in i3 or bspwm
"""

from libqtile import layout
from libqtile.command import lazy
from libqtile.config import EzClick, Group, Match

# Settings shared by all groups
group_config = dict(
  persist=True,
  init=True,
)

# List of workspaces
group_names = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
group_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

groups = []

for i in group_positions:
  groups.append(Group(**group_config, name=group_names[i - 1], position=i))