#!/bin/bash

log_info "starting: ssh.sh"

if [[ -e "$HOME/.ssh/git" ]]; then
    log_skipping "Git SSH key creation: already exists"
else
    mkdir -p "$HOME/.ssh"
    ssh-keygen -t ed25519 -f "$HOME/.ssh/git"
fi

log_info "finished: ssh.sh"
