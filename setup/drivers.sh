#!/bin/bash

case $gpu_vendor in
    "amd")
        sudo pacman -Syu lib32-mesa lib32-vulkan-radeon mesa vulkan-radeon
        ;;

    "nvidia")
        sudo pacman -Syu lib32-nvidia-utils nvidia-open-dkms
        ;;

    "intel")
        sudo pacman -Syu lib32-mesa lib32-vulkan-intel mesa vulkan-intel
        ;;

    "none" | "unknown")
        log_skipping "driver installation no GPU found"
        ;;
esac
