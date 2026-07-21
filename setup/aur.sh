#!/bin/bash

sudo pacman -S base-devel

if [[ -f /tmp/paru ]]; then
    rm -rf /tmp/paru
fi

if command -v paru > /dev/null; then
    log_skipping "paru AUR helper install"
else
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru
    makepkg -si
    rm -rf /tmp/paru
fi
