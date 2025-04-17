#!/bin/bash

# This script follows kickstart-nvim installation guide
echoColor $RED "[!] Nvim installation: "
# Installing some essential dependecies like gcc, make, git...
apt install build-essential
# Improved grep (used by some nvim plugins, that will be installed later)
apt install ripgrep
# Clipboard management tool
apt install xclip

