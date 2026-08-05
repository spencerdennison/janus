#!/bin/bash

if grep -qi "^ID_LIKE=arch$" /etc/os-release; then
    distro=arch
    log_info "Distro: $distro"
else
    log_error "janus only supports Arch Linux currently...exiting"
    exit 1
fi
