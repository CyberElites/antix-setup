## Automatic Configurations for Neovim v0.9.0 - Simple

First, make sure you have Neovim uninstalled:
```
sudo apt remove neovim -y
```

Clone Repository to Downloads:
```
git clone https://github.com/CyberElites/nvim.git && mv nvim ~/Downloads/
```

Go Into Repository and Execute "install_nvim-0-9.sh"
```
cd ~/Downloads/nvim && chmod +x install_nvim-0-9.sh && bash ./install_nvim-0-9.sh
```

On some systems the updates might not works. If so, follow these commands:
```
Linux Commands:
1. nvim ~/.config/nvim/init.lua

Nvim Commands:
2. :source %
3. :PackerSync
4. :wqa

Linux Commands:
5. nvim ~/.config/nvim/lua/core/plugin_config/init.lua

Nvim Commands:
6. :source %
7. :PackerSync
8. :wqa

Linux Commands:
9. sudo apt-get update && sudo apt-get upgrade
10. reboot
```

## Conclusion
After all of these steps, you should have the following:
1. Show directories and files
2. Icons for those files
3. Search command.

## Contributions
Thanks to <a href="https://www.youtube.com/@typecraft_dev">typecraft</a> on a simple tutorial, <a href="https://www.youtube.com/watch?v=J9yqSdvAKXY">Link</a>.
<br>
Thanks to <a href="https://www.nerdfonts.com/">Nerd Fonts</a> for the fonts and icons.
