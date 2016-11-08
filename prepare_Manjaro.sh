#!/bin/sh


bash installs_Manjaro/install_cpp.sh
bash installs_Manjaro/install_science.sh
bash installs_Manjaro/install_tools.sh
bash installs_Manjaro/install_vim.sh
bash installs_Manjaro/install_zsh.sh
bash installs_Manjaro/install_spacemacs.sh

cp -r .config ~
cp -r .gitconfig ~
cp -r .startup.py ~
cp -r .ycm_extra_conf.py ~
cp -r .zshrc ~
cp -r .spacemacs ~

nvim +qall
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

emacs --daemon
