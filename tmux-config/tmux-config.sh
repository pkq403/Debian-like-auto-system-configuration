#!/bin/bash

echoColor $GREEN "[!] Tmux configuration: "
echo ""
cp ./tmux-config/.tmux.conf $HOME
echoColor $GREEN "	[*] Copied .tmux.conf to $HOME"
echo ""
