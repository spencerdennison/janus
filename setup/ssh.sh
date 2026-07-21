#!/bin/bash

paru -S openssh --noconfirm

if [[ -e ~/.ssh/git ]]; then
    log_skipping "Git SSH key creation"
else
    ssh-keygen -t ed25519 -f ~/.ssh/git
fi
