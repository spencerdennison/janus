#!/bin/bash

if [[ "$form_factor" == "laptop" ]]; then
    paru -S bash-completion brightnessctl btop discord foot grim less mako man-db noto-fonts noto-fonts-emoji slurp stow swappy sway tree ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard --noconfirm
else
    paru -S bash-completion btop discord foot grim less mako man-db noto-fonts noto-fonts-emoji slurp stow swappy sway tree ttf-jetbrains-mono-nerd waybar wiremix wl-clipboard --noconfirm
fi
