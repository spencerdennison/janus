#!/bin/bash

set -euo pipefail

gpu_info=$(lspci | grep -iE "vga|3d|display" || true)

if [[ "ls /sys/class/power_supply/ | grep "BAT" || true" == *BAT* ]]; then
    printf "Chassis: Laptop\n"
else
    printf "Chassis: Desktop\n"
fi

case "$gpu_info" in
    *NVIDIA*|*nvidia*)
        printf "GPU:     NVIDIA\n"
        ;;

    *AMD*|*ATI*|*amd*|*ati*)
        printf "GPU:     AMD\n"
        ;;

    *Intel*|*intel*)
        printf "GPU:     Intel\n"
        ;;

    "")
        printf "GPU:     None\n"
        ;;

    *)
        printf "GPU:     Unknown\n"
        ;;
esac
