#!/bin/bash

log_info "starting: tailscale.sh"

sudo systemctl start tailscaled.service
sudo systemctl enable tailscaled.service

log_info "finished: tailscale.sh"
