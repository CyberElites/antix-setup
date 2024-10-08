#!/bin/bash

# Use aptitude updates and upgrades and have them in vice versa order.
sudo apt update -y && sudo apt upgrade -y
sudo apt upgrade -y && sudo apt update -y

# Get latest keyrings.
curl -O -L http://repo.antixlinux.com/antix-archive-keyring_20019.5.0_all.deb
sudo dpkg -i antix-archive-keyring_20019.5.0_all.deb

# Update and upgrade once again.
sudo apt update -y && sudo apt upgrade -y
sudo apt upgrade -y && sudo apt update -y

# Remove the keyring file.
rm antix-archive-keyring_20019.5.0_all.deb

# Install essentials
sudo apt install build-essential -y
sudo apt install libgtk-3-bin -y

# Install git
sudo apt install git -y

# Update and upgrade again.
sudo apt update -y && sudo apt upgrade -y
sudo apt upgrade -y && sudo apt update -y

# Install and setup zsh.
sudo apt install zsh -y
chsh -s $(which zsh)
sudo apt install zsh-autosuggestions -y
sudo apt install zsh-syntax-highlighting -y
mkdir -p /home/$USER/.cargo/bin
sudo apt install command-not-found -y
sudo update-command-not-found
sudo apt update -y
export TERM=xterm-256color
mv /home/$USER/antix-setup/Resources/.zshrc /home/$USER
source .zshrc

# Install and setup kitty.
sudo apt install kitty -y
sudo update-alternatives --config x-terminal-emulator
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/kitty 50

# Uninstall and remove applications.
sudo apt remove xterm -y && sudo apt remove roxterm -y && sudo apt remove roxterm-gtk2 -y && sudo apt remove roxterm-common -y
sudo rm /usr/share/applications/terminal.desktop

# Update, upgrade, and autoremove one last time.
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

# Operator comments.
echo '1. Make "kitty" the default terminal. Control Centre > Edit IceWM Settings'
echo '2. Run nano /usr/local/bin/desktop-defaults-run and edit the "--terminal" to "kitty.desktop"'
echo '3. Run nano ~/.icewm/preferences and do TerminalCommand="kitty"'
echo '4. Run nano ~/.icewm/keys and do key "Ctrl+Alt+t" kitty'
echo '4. Execute Nvim script.'
