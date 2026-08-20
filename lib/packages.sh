#!/bin/bash

log_info "starting: packages.sh"

sudo pacman --sync base-devel bash-completion boinc boinctui brightnessctl btop chezmoi discord foot gimp \
    git github-cli grim less mako man-db noto-fonts noto-fonts-emoji npm openssh slurp stow \
    swappy sway tailscale tmux tree ttf-jetbrains-mono-nerd vim waybar wiremix wl-clipboard \
    xdg-desktop-portal-gtk xdg-desktop-portal-wlr --noconfirm

case $gpu in
    "AMD")
        sudo pacman --sync lib32-mesa lib32-vulkan-radeon mesa vulkan-radeon --noconfirm
        ;;

    "NVIDIA")
        sudo pacman --sync lib32-nvidia-utils nvidia-open-dkms --noconfirm
        ;;

    "Intel")
        sudo pacman --sync lib32-mesa lib32-vulkan-intel mesa vulkan-intel --noconfirm
        ;;

    "?")
        log_skipping "driver installation: no GPU found"
        ;;
esac

read -p "install gaming packages? [Y/n] " gaming_option

case "$gaming_option" in
    [yY]|"")
        sudo pacman --sync steam gamescope --noconfirm
        ;;

    [nN])
        log_skipping "gaming packages: unneeded"
        ;;

    *)
        log_error "invalid input: unknown option"
        ;;
esac

log_info "finished: packages.sh"
