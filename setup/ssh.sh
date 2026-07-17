#!/bin/bash

if ! [[ ls ~/.ssh/ | grep "git" ]]; then
    ssh-keygen -t ed25519 -f ~/.ssh/git
else
    log_skipping "Git SSH key already exists"
    continue
fi
