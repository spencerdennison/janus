#!/bin/bash

log_info "starting: git.sh"

read -prompt "setup GitHub auth? [Y/n] " git_option
case "$git_option" in
    [yY]|"") 
        gh auth login 
        ;;  

    [nN]) 
        log_skipping "GitHub authentication: unneeded" 
        ;;

    *)
        log_error "invalid input: unknown option"
        ;;
esac

log_info "finished: git.sh"
