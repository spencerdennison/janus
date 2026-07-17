#!/bin/bash

distro=$(cat /etc/os-release | grep "^ID")
battery=$(ls /sys/class/power_supply/ | grep -i "BAT" || true)

if [[ "$distro" == *arch* ]]; then
    distro=arch
    log_info "Distro: $distro"
else
    log_error "janus only supports Arch Linux currently"
    exit 1
fi

if [[ -n "$battery" ]]; then
    form_factor="laptop"
else
    form_factor="desktop"
fi

log_info "Device: $form_factor"
