#!/bin/bash

sudo pacman -S openssh

if [[ -e "$HOME/.ssh/git" ]]; then
    log_skipping "Git SSH key creation"
else
    ssh-keygen -t ed25519 -f "$HOME/.ssh/git"
fi
