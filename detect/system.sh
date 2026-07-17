#!/bin/bash

distro_info=$(cat /etc/os-release | grep "^ID")
battery_info=$(ls /sys/class/power_supply/ | grep -i "BAT" || true)

if [[ "$distro_info" == *arch* ]]; then
    distro=arch
    log_info "Distro: $distro"
else
    log_error "janus only supports Arch Linux currently"
    log_info "exiting..."
    exit 1
fi

if [[ "$battery_info" ]]; then
    form_factor="laptop"
else
    form_factor="desktop"
fi

log_info "Device: $form_factor"
