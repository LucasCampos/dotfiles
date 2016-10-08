#!/bin/sh

echo "Installing tools"

mkdir -f ~/repos

sudo pacman -S screen --noconfirm
sudo pacman -S parallel --noconfirm
sudo pacman -S inkscape gimp --noconfirm
sudo pacman -S git gcc make --noconfirm
sudo pacman -S zathura --noconfirm
yaourt -S xcape --noconfirm

