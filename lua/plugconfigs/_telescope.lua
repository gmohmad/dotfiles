local builtin = require('telescope.builtin')
local actions = require('telescope.actions')


require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = actions.close,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			}
		}
	},
	pickers = {
		find_files = {
			hidden = true,
			find_command = {'rg', '--ignore', '--hidden', '--files', '-u'},
			file_ignore_patterns = { "venv", ".git", "__pycache__", ".mypy_cache" },
		}
	}
}


vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',g', builtin.live_grep, {})
vim.keymap.set('n', ',b', builtin.buffers, {})
vim.keymap.set('n', ',h', builtin.help_tags, {})
vim.keymap.set('x', ',h', builtin.help_tags, {})

