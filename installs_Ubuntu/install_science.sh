#!/bin/sh

echo "Installing science-related stuff"

mkdir -f ~/repos

sudo apt-get install python-numpy python-scipy python-matplotlib -y
sudo apt-get install python3-numpy python3-scipy python3-matplotlib -y
sudo apt-get install octave gnuplot-x11 -y
sudo apt-get install libpng12-dev libfreetype6-dev libglfw-dev -y


git clone https://github.com/LucasCampos/VIV ~/repos/VIV
git clone https://github.com/LucasCampos/POPS ~/repos/POPS

cd ~/repos

cd POPS
make
sudo make install
cd ..

cd VIV
make 
sudo make install
cd ..
