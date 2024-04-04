-- Require the plugings and the remaps
require('plug')
require('remap')


-- Plug configs
require('_telescope')
require('_toggleterm')
require('_lsp')
require('_cmp')
require('_catppuccin')
require('_comment')


-- Other plugs that i didnt config
require('nvim-autopairs').setup()
require("nvim-surround").setup()


-- Built in file explorer config
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3


-- Set line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true


-- Dont like wrapping
vim.opt.wrap = false


-- Disable shada and swapfiles
vim.opt.shadafile = "NONE"
vim.opt.swapfile = false


-- Enable mouse support
vim.opt.mouse = "a"


-- Search configs
vim.opt.hlsearch = false
vim.opt.incsearch = true


-- Sets that vertical line you see on the right 
vim.opt.colorcolumn = "120"


-- Sets the scrolloff 
vim.opt.scrolloff = 8


-- Set tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4


-- Set clipboard to use system clipboard
vim.opt.clipboard = "unnamedplus"


-- Set default colorscheme
vim.cmd.colorscheme "catppuccin-mocha"


-- Extra colors thing
vim.opt.termguicolors = true
