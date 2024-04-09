-- Move the selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Remap Esc to jj to enter normal mode
vim.keymap.set('i', 'jj', '<Esc>')


-- Set buffer navigation remaps
vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<BS>", ":bp<CR>")


-- Select all from current buffer
vim.keymap.set("n", "<C-a>", "ggVG")


-- Keymaps for using system clipboard
vim.keymap.set("n", ",y", '"+y')
vim.keymap.set("n", ",p", '"+p')


-- Ctrl+p not to loose the stuff youre pasting over with
vim.keymap.set("x", "<C-p>", "\"_dP")
