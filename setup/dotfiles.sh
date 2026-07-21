#!/bin/bash

if [[ -f ~/.config ]]; then
    log_skipping "dotfiles repo clone"
else
    rm -rf .bashrc
    rm -rf .bash_profile
    mkdir .config
    git clone git@github.com:$git_username/dotfiles.git
    cd ~/dotfiles
    stow .
fi
