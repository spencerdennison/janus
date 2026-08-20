#!/bin/bash

log_info "starting: paru.sh"

if command -v paru > /dev/null; then
    log_skipping "paru install: already exists"
else
    if [[ -e /tmp/paru ]]; then
        log_info "removing /tmp/paru: "
        rm --force --recursive /tmp/paru
    fi

    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru
    makepkg --syncdeps --install
    rm --force --recursive /tmp/paru
fi

paru --sync brave-bin tofi opencl-amd xcursor-hackneyed-light --noconfirm

log_info "finished: paru.sh"
