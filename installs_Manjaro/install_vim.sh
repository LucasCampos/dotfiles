#!/bin/sh

echo "Installing neovim"

sudo pacman -S neovim python-neovim python2-neovim --noconfirm

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
