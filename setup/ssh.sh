#!/bin/bash

if [[ "ls ~/.ssh/ | grep "git" || true" ]]; then
    log_skipping "Git SSH key already exists"
else
    ssh-keygen -t ed25519 -f ~/.ssh/git
fi
