#!/bin/bash

BLUE="\033[0;34m"
GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"

# Logging functions
log_info() {
    printf "${BLUE}[INFO]${RESET} %s\n" "$1"
}

log_success() {
    printf "${GREEN}[SUCCESS]${RESET} %s\n" "$1"
}

log_skipping() {
    printf "${WHITE}[SKIPPING]${RESET} %s\n" "$1"
}

log_error() {
    printf "${RED}[ERROR]${RESET} %s\n" "$1" >&2
}
