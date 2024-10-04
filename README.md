## Automatic Configurations for Antix Linux

### Antix Script Setup

Clone Repository:
```sh
# If you have not already.
git clone https://github.com/CyberElites/antix-setup.git && mv antix-setup /home/$USER
```

Run Script to Setup Antix:
```sh
cd /home/$USER/antix-setup/Resources && chmod +x antix-script-setup.sh && bash ./antix-script-setup.sh
```

### NvChad

**Note,** the neovim installation requires FUSE when installing. If you don't have fuse, follow this <a href="https://github.com/neovim/neovim/releases/tag/v0.10.2">link</a> as this installation process isn't providing the `--appimage-extract` portion.

Clone Repository:
```sh
# If you have not already.
git clone https://github.com/CyberElites/antix-setup.git && mv antix-setup /home/$USER
```

Run Script to Setup NvChad
```sh
cd /home/$USER/antix-setup/Resources && chmod +x install_nvim-0-10-2.sh && bash ./install_nvim-0-10-2.sh
```

Make sure that when the installation is complete, you check your system, run `nvim`, and reboot your system.


## References
<a href="https://github.com/neovim/neovim/releases/tag/v0.10.2">Neovim v0.10.2</a>
<br>
<br>
<a href="https://nvchad.com/docs/quickstart/install">NvChad.</a>
