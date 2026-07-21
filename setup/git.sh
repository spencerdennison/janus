#!/bin/bash

git_option=

read -p "Setup GitHub authentication? [Y/n]" $git_option
case "$git_option" in
    [yY]|"") 
        gh auth login 
        ;;  

    [nN]) 
        log_skipping "GitHub authentication" 
        ;;

    *)
        log_error "invalid input"
        ;;
esac
