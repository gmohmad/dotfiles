-- Plugins with vim-plug
local vim = vim
local Plug = vim.fn['plug#']


vim.call('plug#begin')


Plug('vim-airline/vim-airline')
Plug('okuuva/auto-save.nvim')
 
Plug('mfussenegger/nvim-dap')
Plug('leoluz/nvim-dap-go')
Plug('rcarriga/nvim-dap-ui')
Plug('nvim-neotest/nvim-nio')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')

Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')

Plug('neovim/nvim-lspconfig')

Plug('numToStr/Comment.nvim')
Plug('windwp/nvim-autopairs')
Plug('kylechui/nvim-surround')

Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' })
Plug('nvim-lua/plenary.nvim')

Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })


vim.call('plug#end')
