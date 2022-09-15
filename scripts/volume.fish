#!/usr/bin/env fish

# Useful functions for displaying current volume
# Usage:
#   ./volume_display.fish vol | per

function get_volume
  # Returns an integer indicating current volume levels
  # outputs a number on [0,100+]
  set -l muted $(pamixer --get-mute)
  if test "$muted" = "true"
    echo 0
  else
    echo (pamixer --get-volume)
  end
end

function get_percentage
  # Returns percentage of volume out of 100 as a string
  set -l volume $(get_volume)
  echo "$volume%"
end


if test (count $argv) -eq 1
  if test "$argv" = "vol"
    get_volume
  else if test "$argv" = "per"
    get_percentage
  end
end