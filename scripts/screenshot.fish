#!/bin/fish
#!/usr/bin/env fish
# Takes a screenshot of entire X display or an area
# Usage: ./screenshot.fish area | full

set -l file_format png
set -l file_name $(date +%s)
set -l save_location $HOME/pictures/screenshots

if test ! -e $save_location
  mkdir -p $save_location
end

if test (count $argv) -eq 1
  if test "$argv" = "full"
    maim -u $save_location/$file_name.$file_format
  else if test "$argv" = "area"
    maim -u -s $save_location/$file_name.$file_format
  end
end