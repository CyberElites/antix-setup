#!/bin/bash

#--- Setup Nvim and Fonts

#Download curl if not already
sudo apt install curl -y

# Download nvim-linux64.tar.gz from the URL and move it to ~/Downloads
curl -o ~/Downloads/nvim-linux64.tar.gz -L https://github.com/neovim/neovim/releases/download/v0.9.0/nvim-linux64.tar.gz

# Move nvim-linux64.tar.gz to /usr/local/bin
sudo mv ~/Downloads/nvim-linux64.tar.gz /usr/local/bin

# Extract the tar.gz file
sudo tar xzvf /usr/local/bin/nvim-linux64.tar.gz -C /usr/local/bin

#Create font directory
mkdir ~/.local/share/fonts

#Install Arimo Nerd Font
curl -o ~/.local/share/fonts/Arimo.zip -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Arimo.zip

#Unzip font
unzip -d ~/.local/share/fonts ~/.local/share/fonts/Arimo.zip

#Refresh fonts cache
fc-cache -fv


#--- Configure Nvim


# Move Vim files to ~/.config
mv ~/Downloads/nvim ~/.config

# Create a symbolic link to nvim binary
sudo ln -s /usr/local/bin/nvim-linux64/bin/nvim /usr/local/bin/nvim

## Manual Steps - By Commands:
# Linux Commands:
# 1. nvim ~/.config/nvim/init.lua

# Nvim Commands:
# 2. :source %
# 3. :PackerSync
# 4. :wqa

# Linux Commands:
# 5. nvim ~/.config/nvim/lua/core/plugin_config/init.lua

# Nvim Commands:
# 6. :source %
# 7. :PackerSync
# 8. :wqa

# Linux Commands:
# 9. reboot