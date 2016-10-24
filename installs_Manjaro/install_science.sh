#!/bin/sh

echo "Installing science-related stuff"

mkdir -f ~/repos

sudo pacman -S python-numpy python-scipy python-matplotlib --noconfirm
sudo pacman -S python2-numpy python2-scipy python2-matplotlib --noconfirm
sudo pacman -S octave gnuplot --noconfirm
sudo pacman -S libpng freetype --noconfirm
yaourt -S glfw2 --noconfirm


git clone https://github.com/LucasCampos/VIV ~/repos/VIV
git clone https://github.com/LucasCampos/POPS ~/repos/POPS

