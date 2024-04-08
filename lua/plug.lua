-- Plugins with vim-plug
vim.cmd([[
	call plug#begin()


	Plug 'vim-airline/vim-airline'
	Plug 'okuuva/auto-save.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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
