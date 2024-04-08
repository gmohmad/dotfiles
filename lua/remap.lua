vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Move the selected lines up and down


-- Remap Esc to jj to enter normal mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })


-- Ctrl+p not to loose the stuff youre pasting over with
vim.keymap.set("x", "<C-p>", "\"_dP")
