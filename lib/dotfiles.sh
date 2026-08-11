#!/bin/bash

log_info "starting: dotfiles.sh"

chezmoi init --apply spencerdennison

rm --force --recursive $HOME/node_modules
rm --force --recursive $HOME/package.json
rm --force --recursive $HOME/package-lock.json
rm --force --recursive $HOME/README.md

log_info "finished: dotfiles.sh"
