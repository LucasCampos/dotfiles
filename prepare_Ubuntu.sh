#!/bin/sh


bash installs/install_cpp.sh
bash installs/install_science.sh
bash installs/install_tools.sh
bash installs/install_vim.sh
bash installs/install_zsh.sh
bash installs/install_spacemacs.sh

cp -r .config ~
cp -r .gitconfig ~
cp -r .startup.py ~
cp -r .ycm_extra_conf.py ~
cp -r .zshrc ~
cp -r .spacemacs ~

vim +qall
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

emacs --daemon


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
