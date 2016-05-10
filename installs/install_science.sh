#!/bin/sh

mkdir -f ~/repos

sudo apt-get install python-numpy python-scipy python-matplotlib -y
sudo apt-get install octave gnuplot-x11 -y
sudo apt-get install libpng12-dev libfreetype6-dev libglfw-dev -y


git clone https://github.com/LucasCampos/VIV ~/repos
git clone https://github.com/LucasCampos/POPS ~/repos

cd ~/repos

cd POPS
make
sudo make install
cd ..

cd VIV
make 
sudo make install
cd ..
