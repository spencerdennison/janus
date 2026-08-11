#!/bin/bash

log_info "starting: ssh.sh"

if [[ -e "$HOME/.ssh/git" ]]; then
    log_skipping "Git SSH key creation: already exists"
else
    ssh-keygen -t ed25519 -filename "$HOME/.ssh/git"
fi

log_info "finished: ssh.sh"
