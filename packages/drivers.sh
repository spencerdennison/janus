#!/bin/bash

case $gpu_vendor in
    "amd")
        paru -S lib32-mesa lib32-vulkan-radeon mesa vulkan-radeon
        ;;

    "nvidia")
        paru -S lib32-nvidia-utils nvidia-open-dkms
        ;;

    "intel")
        paru -S lib32-mesa lib32-vulkan-intel mesa vulkan-intel
        ;;

    "none" | "unknown")
        log_skipping "driver installation no GPU found"
        ;;
esac
