#!/bin/fish
# Randomly selects a wallpaper from given directory

set -l wallpapers "$HOME/.config/images/wallpapers"
rm $wallpapers/wallpaper.*
cp (random choice $wallpapers/assets/*.jpg) $wallpapers/wallpaper.jpg