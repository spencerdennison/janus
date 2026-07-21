#!/bin/bash

sudo pacman -S openssh

if [[ -f ~/.ssh/git ]]; then
    log_skipping "Git SSH key creation"
else
    ssh-keygen -t ed25519 -f ~/.ssh/git
fi
