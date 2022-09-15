!/bin/fish

# Simple playerctl wrapper for EWW
# Usage:
# ./control.fish next | previous | play-pause

if test (count $argv) -eq 1
  if test "$argv" = "next" -o "$argv" = "previous" -o "$argv" = "play-pause"
    playerctl -s --player=mpd,spotify,firefox,%any $argv
  end
end
