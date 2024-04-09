-- A function to move selected lines down in visual mode
function move_lines_down_visual()
    vim.api.nvim_command("'<, '>m '>+1")
    vim.api.nvim_command("normal! gv=gv")
end

-- A function to move selected lines up in visual mode
function move_lines_up_visual()
    vim.api.nvim_command("'<, '>m '<-2")
    vim.api.nvim_command("normal! gv=gv")
end


-- Set key mappings to call the functions above
vim.api.nvim_set_keymap('v', 'J', [[:lua move_lines_down_visual()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', [[:lua move_lines_up_visual()<CR>]], { noremap = true, silent = true })


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

vim.keymap.set("v", ",y", '"+y')
vim.keymap.set("v", ",p", '"+p')


-- Ctrl+p not to loose the stuff youre pasting over with
vim.keymap.set("x", "<C-p>", "\"_dP")
