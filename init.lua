-- Plugins with vim-plug
vim.cmd([[
	call plug#begin()


	Plug 'vim-airline/vim-airline'

	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'

	Plug 'neovim/nvim-lspconfig'

	Plug 'numToStr/Comment.nvim'
	Plug 'windwp/nvim-autopairs'
	Plug 'kylechui/nvim-surround'

	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
	Plug 'nvim-lua/plenary.nvim'

	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

	call plug#end()
]])


-- Plug configs
require('lspconf')
require('cmpconf')
require('telescopeconf')
require('toggletermconf')
require('commentconf')
require('catpuccinconf')

require('nvim-autopairs').setup()
require("nvim-surround").setup()


-- Built in file explorer config
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3


-- Set line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false


-- Enable mouse support
vim.opt.mouse = "a"


-- Set tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4


-- Map 'jj' to exit insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })


-- Set clipboard to use system clipboard
vim.opt.clipboard = "unnamedplus"


-- Set default colorscheme
vim.cmd.colorscheme "catppuccin-mocha"
-- vim.cmd.colorscheme "habamax"

-- Set highlight color for Visual mode
vim.cmd('highlight Visual guibg=#c4c4c2')


-- Extra colors thing
vim.opt.termguicolors = true
