#!/bin/bash

read -p "Install gaming packages? [Y/n] " gaming_option

case "$gaming_option" in
    [yY]|"")
        paru -S steam gamescope --nonconfirm
        ;;

    [nN])
        log_skipping "gaming packages"
        ;;

    *)
        log_error "invalid input"
        ;;
esac
