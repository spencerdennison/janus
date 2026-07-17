#!/bin/bash

if ! [[ "ls ~/ | grep ".gitconfig"" ]]; then 
    read -p "Enter GitHub username: " $git_username
    read -p "Enter GitHub email: " $git_email

    git config --global user.email "$git_email"
    git config --global user.name "$git_username"
else
    log_skipping "Git config already exists"
fi

read -p "Setup GitHub authentication? [Y/n]" $git_option
case "$git_option" in
    [yY]|"") 
        gh auth login 
        ;;  

    [nN]) 
        log_skipping "no GitHub authentication needed" 
        ;;

    *)
        log_error "invalid input please try again"
        ;;
esac
