require("toggleterm").setup{
  size = 15, -- the size of a terminal
  open_mapping = [[<c-n>]], -- toggle terminal
  autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
  start_in_insert = true, -- start in insert mode
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  direction = "float", -- the direction in which the terminal opens
  float_opts = {
    border = 'curved', -- 'shadow' | 'curved' 
	width = 120,
    winblend = 20,
  },
}
