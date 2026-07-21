#!/bin/bash

if [[ -e ~/dotfiles ]]; then
    log_skipping "dotfiles repo clone"
else
    rm -rf .bashrc
    rm -rf .bash_profile
    git clone git@github.com:spencerdennison/dotfiles.git
    cd ~/dotfiles
    stow .
fi
