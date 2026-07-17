#!/bin/bash

if ! [[ "ls ~/ | grep ".gitconfig"" ]]; then 
    read -p "Enter GitHub username: " $git_username
    read -p "Enter GitHub email: " $git_email

    git config --global user.email "$git_email"
    git config --global user.name "$git_username"
else
    log_skipping "gitconfig creation"
fi

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
