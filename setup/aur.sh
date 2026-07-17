#!/bin/bash

if command -v paru > /dev/null; then
    log_skipping "paru AUR helper already installed"
else
    git clone https://aur.archliunx.org/paru.git /tmp/paru
    cd /tmp/paru
    makepkg -si
    rm -rf /tmp/paru
fi
