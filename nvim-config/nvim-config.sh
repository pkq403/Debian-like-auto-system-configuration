#!/bin/bash
# [!] Attention: the correct NVIM version should have been installed before running this
# At the moment of writing this script NVIM 0.10.x is the one that is working with kickstart.nvim
# This script follows kickstart-nvim installation guide
echoColor $RED "[!] Nvim installation: "

# Installing pre-requisites:
echoColor $CYAN "	Installing Pre-requisites"
# Installing some essential dependecies like gcc, make, git...
apt install build-essential -y
# Improved grep (used by some nvim plugins, that will be installed later)
apt install ripgrep -y
# Clipboard management tool
apt install xclip -y

echoColor $CYAN "	Downloading kickstart.nvim in ./config/nvim"
git clone https://github.com/pkq403/kickstart.nvim-pkq403-custom-
"${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

echoColor $RED "	Do: nvim for seeing your new NVIM set up"
# Now you should start nvim to start the plugin installation, do
# nvim
# You can see the status of nvim plugins with :Lazy (inside nvim)
