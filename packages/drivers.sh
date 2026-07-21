#!/bin/bash

case $gpu_vendor in
    "amd")
        paru -S lib32-mesa lib32-vulkan-radeon mesa vulkan-radeon --noconfirm
        ;;

    "nvidia")
        paru -S lib32-nvidia-utils nvidia-open-dkms --noconfirm
        ;;

    "intel")
        paru -S lib32-mesa lib32-vulkan-intel mesa vulkan-intel --noconfirm
        ;;

    "none" | "unknown")
        log_skipping "driver installation no GPU found"
        ;;
esac
