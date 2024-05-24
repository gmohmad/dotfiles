-- A function to move selected lines down in visual mode
function move_lines_down_visual()
	local current_line = vim.api.nvim_win_get_cursor(0)[1]
	local last_line = vim.api.nvim_buf_line_count(0)

	local selected_lines_count = vim.fn.line("'>") - vim.fn.line("'<")

	-- When we hit the bottom we just reselect the lines
	if current_line + selected_lines_count < last_line then
		vim.api.nvim_command("'<, '>m '>+1")
		vim.api.nvim_command("normal! gv=gv")
	else
		vim.api.nvim_command("normal! gv")
	end
end


-- A function to move selected lines up in visual mode
function move_lines_up_visual()
	local current_line = vim.api.nvim_win_get_cursor(0)[1]

	-- When we hit the top we just reselect the lines
	if current_line > 1 then
		vim.api.nvim_command("'<, '>m '<-2")
		vim.api.nvim_command("normal! gv=gv")
	else
		vim.api.nvim_command("normal! gv")
	end
end

-- Set key mappings to call the functions above
vim.api.nvim_set_keymap('v', 'J', [[:lua move_lines_down_visual()<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', [[:lua move_lines_up_visual()<cr>]], { noremap = true, silent = true })


-- Remap Esc to jj to enter normal mode
vim.keymap.set('i', 'jj', '<Esc>')


-- Ctrl + u/d mappings
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')


-- Set buffer navigation remaps
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<BS>', ':bprev<CR>', { noremap = true, silent = true })


-- Select all from current buffer
vim.keymap.set("n", "<C-a>", "ggVG")


-- Remap semicolon to enter command mode
vim.keymap.set("n", ";", ":")


-- Keymaps to add lines above or under in normal mode
vim.keymap.set("n", "-", "O<Esc>")
vim.keymap.set("n", "+", "o<Esc>")


-- Keymaps for using system clipboard
vim.keymap.set("n", "<Space>y", '"+y')
vim.keymap.set("n", "<Space>p", '"+p')

vim.keymap.set("v", "<Space>y", '"+y')
vim.keymap.set("v", "<Space>p", '"+p')


-- Ctrl+p not to loose the stuff youre pasting over with
vim.keymap.set("x", "<C-p>", "\"_dP")
