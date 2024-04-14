-- Require the plugings and the remaps
require('plug')
require('remap')


-- Require the plugin configurations
require('plugconfigs')


-- Built in file explorer config
vim.g.netrw_banner = 0


-- Set the cursor line
vim.opt.cursorline = true


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


-- Search configuration 
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


-- Set default colorscheme
vim.cmd.colorscheme "catppuccin-mocha"


-- Extra colors thing
vim.opt.termguicolors = true


-- Live updates
vim.cmd[[
  autocmd BufEnter * checktime
]]

