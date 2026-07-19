#!/bin/bash

if ! [[ "ls ~/ | grep ".config"" ]]; then
    rm -rf .bashrc
    rm -rf .bash_profile
    mkdir .config
    git clone git@github.com:$git_username/dotfiles.git
    cd ~/dotfiles
    stow .
else
    log_skipping "dotfiles repo clone"
fi
