#!/bin/bash

if grep --quiet --ignore-case "^ID=arch" /etc/os-release; then
    distro="Arch"
    log_info "Distro: $distro"
else
    log_error "janus only supports Arch Linux currently...exiting"
    exit 1
fi

if compgen -G "/sys/class/power_supply/BAT*" > /dev/null; then
    device="Laptop"
else
    device="Desktop"
fi

log_info "Device: $device"

gpu_info=$(lspci | grep --extended-regexp --ignore-case "vga|3d|2d")

case "$gpu_info" in
    *nvidia*)
        gpu="NVIDIA"
        ;;

    *amd*|*ati*)
        gpu="AMD"
        ;;

    *intel*)
        gpu="Intel"
        ;;

    *)
        gpu="?"
        ;;
esac

log_info "GPU: $gpu"
