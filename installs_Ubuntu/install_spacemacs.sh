#!/bin/sh

echo "Installing Spacemacs"
sudo apt-get install emacs-nox aspell-pt aspell-en -y
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
