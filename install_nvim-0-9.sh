#!/bin/bash

#--- Setup Custom Nvim

# First, remove Nvim and its dependencies
sudo apt remove nvim -y
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

# Download necessary commands if not already
sudo apt install curl -y
sudo apt install npm -y

# Download nvim.appimage and NvChad
curl -O -L https://github.com/neovim/neovim/releases/download/v0.9.4/nvim.appimage
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Add permissions to nvim.appimage
chmod u+x nvim.appimage

# Move appimage to /usr/local/bin
mv nvim.appimge /usr/local/bin

#Create font directory
mkdir ~/.local/share/fonts

#Install Arimo Nerd Font
curl -o ~/.local/share/fonts/Arimo.zip -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Arimo.zip

#Unzip font
unzip -d ~/.local/share/fonts ~/.local/share/fonts/Arimo.zip

#Refresh fonts cache
fc-cache -fv

# Create a symbolic link to nvim binary
sudo ln -s /usr/local/bin/nvim.appimage /usr/local/bin/nvim

# Echo important tips
echo "\n\nIt would be advised to run nvim and then restart your system afterwards."