#!/bin/bash

# This script follows kickstart-nvim installation guide
echoColor $RED "[!] Nvim installation: "
# Installing some essential dependecies like gcc, make, git...
apt install build-essential
# Improved grep (used by some nvim plugins, that will be installed later)
apt install ripgrep
# Clipboard management tool
apt install xclip
# Installing a nerd font (Jetbrains Mono)
mkdir jetbrains-mono && cd jetbrains-mono
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip?_gl=1*1w4mw*_ga*MTU0MzQ3NzM5OC4xNzQ0NDQ4Njg2*_ga_9J976DJZ68*MTc0NDQ0ODY4NC4xLjAuMTc0NDQ0ODY4OC42MC4wLjA.*_gcl_au*NTc1MjQ5MzM0LjE3NDQ0NDg2ODk.*FPAU*NTc1MjQ5MzM0LjE3NDQ0NDg2ODk. -O JetBrainsMono.zip
unzip JetBrainsMono.zip
cp fonts/ttf/* /usr/share/fonts/ && cd .. && rm -rf jetbrains-mono

