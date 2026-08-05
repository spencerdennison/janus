#!/bin/bash

gpu_info=$(lspci | grep -E "VGA|3D|Display")
gpu_info=${gpu_info,,}

case "$gpu_info" in
    *nvidia*)
        gpu_vendor=nvidia
        ;;

    *amd*|*ati*)
        gpu_vendor=amd
        ;;

    *intel*)
        gpu_vendor=intel
        ;;

    "")
        gpu_vendor=none
        ;;

    *)
        gpu_vendor=unknown
        ;;
esac

log_info "GPU: $gpu_vendor"
