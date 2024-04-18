# My current Neovim config

## Prerequisites
- [Neovim](https://neovim.io/): The text editor itself.
- [Vim-plug](https://github.com/junegunn/vim-plug): A plugin manager.<br><br>

*You might need to install some additional packages in order for the plugins to work, like ripgrep or fd.

##
## Features
- [vim-airline](https://github.com/vim-airline/vim-airline): Provides a lightweight status/tabline for Vim and Neovim.
- [auto-save.nvim](https://github.com/okuuva/auto-save.nvim): Automatically saves changes.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Provides better syntax highlighting and improved navigation.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Provides auto-completion support.
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): Provides LSP (Language Server Protocol) completion support for nvim-cmp.
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): Provides buffer completion support for nvim-cmp.
- [cmp-path](https://github.com/hrsh7th/cmp-path): Provides file path completion support for nvim-cmp.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Provides configurations for built-in LSP client in Neovim.
- [Comment.nvim](https://github.com/numToStr/Comment.nvim): Provides easy commenting/uncommenting of code blocks in various languages.
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs): Automatically inserts closing pairs for brackets, parentheses, etc.
- [nvim-surround](https://github.com/kylechui/nvim-surround): Provides mappings to easily add, change, or delete surroundings in pairs (e.g., parentheses, brackets).
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): Provides a terminal that can be toggled open and closed with a key binding.
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): A highly extendable fuzzy finder for Neovim that allows searching through files, buffers, git files, and more.
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim): A Lua library for Neovim plugin development that provides useful utility functions.
- [catppuccin/nvim](https://github.com/catppuccino/nvim): Provides customizable color themes.
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
