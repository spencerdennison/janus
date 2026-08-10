#!/bin/bash

sudo pacman -S chezmoi --noconfirm

chezmoi init --apply spencerdennison
