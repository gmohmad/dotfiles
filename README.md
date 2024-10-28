# My current Neovim config

## Prerequisites
- [Neovim](https://neovim.io/): The text editor itself.
- [Vim-plug](https://github.com/junegunn/vim-plug): A plugin manager.<br><br>

*You might need to install some additional packages in order for the plugins to work, like ripgrep or fd.

##
## Plugins
You can see all the installed plugins in ./lua/plug.lua
<br>

## Getting started
To use this configuration, follow these steps:
<br><br>


### 1.  Clone the repo
Clone this repository into your Neovim configuration directory (typically `~/.config/nvim/` or `~/.nvim/`)
```
git clone https://github.com/gmohmad/Nvim-config.git
```
### 2.  Install the plugins
Open Neovim and run the following command to install all the plugins listed in the configuration:
```
:PlugInstall
```
## Done! It's that easy/

*If you want to adjust some plugin configs or key mappings, all the plugin configuraions/plugin remaps are here ./lua/plugconfigs/, and general remaps are here ./lua/remap.lua
