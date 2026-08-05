#!/bin/bash

if compgen -G "/sys/class/power_supply/BAT*" > /dev/null; then
    form_factor="laptop"
else
    form_factor="desktop"
fi

log_info "Device: $form_factor"
