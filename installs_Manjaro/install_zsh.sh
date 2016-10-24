#!/bin/sh

echo "Installing zsh"

sudo pacman -S zsh --noconfirm
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

