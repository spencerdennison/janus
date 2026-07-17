gpu_info=$(lspci | grep -E "VGA|3D|Display")

case "$gpu_info" in
    *NVIDIA*|*nvidia*)
        gpu_vendor=nvidia
        ;;

    *AMD*|*ATI*|*amd*|*ati*)
        gpu_vendor=amd
        ;;

    *Intel*|*intel*)
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
