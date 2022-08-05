from os import path
import subprocess
from libqtile import hook #, qtile
# from modules.groups import groups

@hook.subscribe.startup_once
def start_once():
  autostart = path.expanduser("~/.local/bin/autostart.sh")
  subprocess.call(
    [autostart],
    stdout = subprocess.DEVNULL,
    stderr = subprocess.STDOUT
  )

@hook.subscribe.startup_complete
def attach_monitors_to_workspaces():
  # TODO: Look at go_to_group for example on how to implement this
  pass