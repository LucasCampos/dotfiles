#!/bin/sh

echo "Installing tools"

mkdir -f ~/repos

sudo apt-get install git gcc make pkg-config libx11-dev libxtst-dev libxi-dev -y
sudo apt-get install zathura -y

git clone https://github.com/alols/xcape.git ~/repos

cd ~/repos

cd xcape
make 
sudo make install
cd ..
