#!/bin/bash

if [[ "$form_factor" == "desktop" ]]; then
    paru -S steam gamescope --nonconfirm
else
    log_skipping "gaming packages not needed"
fi
