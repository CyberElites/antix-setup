#!/bin/bash

#--- Setup Custom Nvim

# First, remove Nvim and its dependencies
sudo apt remove nvim -y
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
sudo rm nvim # Meant for if you created nvim before

# Download necessary commands if not already
sudo apt install curl -y
sudo apt install npm -y

# Download nvim.appimage and NvChad
curl -O -L https://github.com/neovim/neovim/releases/download/v0.9.4/nvim.appimage
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Add permissions to nvim.appimage
chmod u+x /home/$USER/nvim/nvim.appimage

# Move appimage to /usr/local/bin
sudo mv /home/$USER/nvim/nvim.appimage /usr/bin/nvim.appimage

#Create font directory
if [ ! -d "/home/$USER/.local/share/fonts" ]; then
    mkdir ~/.local/share/fonts
fi

# --- Ask User if they Want Font File

while true; do
    echo "Do you want to add a specific font to '~/.local/share/fonts'? (yes/no) "
    read answer

    if [ "$answer" = "yes" ] || [ "$answer" = "y" ]; then
        #Install Arimo Nerd Font
        curl -o ~/.local/share/fonts/Arimo.zip -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Arimo.zip

        #Unzip font
        unzip -d ~/.local/share/fonts ~/.local/share/fonts/Arimo.zip

        #Refresh fonts cache
        fc-cache -fv

        break
    elif [ "$answer" = "no" ] || [ "$answer" = "n" ]; then
        break
    else
        echo "Please enter a valid response (yes/no)."
    fi
done

# Create a symbolic link to nvim binary
sudo ln -s /usr/bin/nvim.appimage /usr/bin/nvim

# Echo important tips
echo "It would be advised to run nvim and then restart your system afterwards."