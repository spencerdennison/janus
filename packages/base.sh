#!/bin/bash

if [[ "$form_factor" == "laptop" ]]; then
    sudo pacman -S bash-completion brightnessctl btop discord foot grim less mako man-db noto-fonts noto-fonts-emoji slurp stow swappy sway tree ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard xdg-desktop-portal-gtk xdg-desktop-portal-wlr
else
    sudo pacman -S bash-completion btop discord foot grim less mako man-db noto-fonts noto-fonts-emoji slurp stow swappy sway tree ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard  xdg-desktop-portal-gtk xdg-desktop-portal-wlr

fi
