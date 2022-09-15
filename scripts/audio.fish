#!/usr/bin/env fish
# Changes the default sink by cycling through the list of suspended sinks
set -l sink (pactl list short sinks | grep "SUSPENDED" | awk '{print $1}' | head -1)
pactl set-default-sink $sink