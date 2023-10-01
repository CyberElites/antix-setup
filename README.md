## Automatic Configurations for Neovim v0.9.0 - Simple

Clone Repository to Downloads:
```
git clone https://github.com/CyberElites/nvim.git && mv nvim ~/Downloads/
```

Go Into Repository and Execute "install_nvim-0-9.sh"
```
cd ~/Downloads/nvim && chmod +x install_nvim-0-9.sh && bash ./install_nvim-0-9.sh
```

After those we have to do a few manual steps:
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
9. reboot
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
