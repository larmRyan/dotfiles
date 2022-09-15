#!/bin/fish
# Randomly selects a profile photo from given directory

set -l pfp "$HOME/.config/images/pfp"
rm $pfp/pfp.*
cp (random choice $pfp/assets/*.jpg) $pfp/pfp.jpg
