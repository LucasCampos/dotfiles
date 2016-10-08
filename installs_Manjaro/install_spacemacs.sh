#!/bin/sh

echo "Installing Spacemacs"
sudo pacman -S emacs-nox aspell-pt aspell-en --noconfirm
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
