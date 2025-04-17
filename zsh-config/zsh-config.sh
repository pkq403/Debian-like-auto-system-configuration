#!/bin/bash

# installing zsh
sudo apt install zsh
# Setting zsh as the deafult shell
chsh -s %(which zsh)

# Installing ohyzsh
# this will create a custom .zshrc and a .ohmyzsh/ (folder) where will be stored ohmyzsh config
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k theme installation
# downloading the recommended font

# - MesloLGSNFRegular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O MesloLGSNFRegular.ttf

# - MesloLGSNFBold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O MesloLGSNFBold.ttf

# - MesloLGSNFItalic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O MesloLGSNFItalic.ttf

# - MesloLGSNFBoldItalic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O MesloLGSNFBoldItalic.ttf

# Installing fonts
mv MesloLGSNFRegular.ttf MesloLGSNFBold.ttf MesloLGSNFItalic.ttf MesloLGSNFBoldItalic.ttf /usr/share/fonts

# Installing Power10k itself
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Setting it in .zshrc
sed -i '/^ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' $HOME/.zshrc

exec zsh

# if the power10k wizard does not show up, do
# p10k configure 
