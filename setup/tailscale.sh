#!/bin/bash

paru -S tailscale --noconfirm

sudo systemctl start tailscaled.service
sudo systemctl enable tailscaled.service
