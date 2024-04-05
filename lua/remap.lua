-- Move the selected lines up and down
vim.keymap.set("v", "J", ":m +1<CR>v=v")
vim.keymap.set("v", "K", ":m -2<CR>v=v")


-- Remap Esc to jj to enter normal mode
vim.api.nvim_set_keymap('i', '<C-j>', '<Esc>', { noremap = true })


-- Ctrl+p not to loose the stuff youre pasting over with
vim.keymap.set("x", "<C-p>", "\"_dP")
