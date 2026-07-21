#!/bin/bash

if [[ -e ~/dotfiles ]]; then
    log_skipping "dotfiles repo clone"
else
    rm -f ~/.bashrc
    rm -f ~/.bash_profile
    git clone https://github.com/spencerdennison/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    stow .
fi
