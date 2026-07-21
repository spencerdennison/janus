#!/bin/bash

if ls -al ~/.ssh/ | grep "git" || true; then
    log_skipping "Git SSH key creation"
else
    ssh-keygen -t ed25519 -f ~/.ssh/git
fi
