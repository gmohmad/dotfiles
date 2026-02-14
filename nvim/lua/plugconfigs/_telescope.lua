local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

local state = require("telescope.state")
local action_state = require("telescope.actions.state")

-- A function for slow scrolling telescope preview
local slow_scroll = function(prompt_bufnr, direction)
    local previewer = action_state.get_current_picker(prompt_bufnr).previewer
    local status = state.get_status(prompt_bufnr)

    if type(previewer) ~= "table" or previewer.scroll_fn == nil or status.preview_win == nil then
		return
    end

    previewer:scroll_fn(1 * direction)
end


require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = actions.close,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,

			    ["<C-e>"] = function(bufnr) slow_scroll(bufnr, 1) end,
			    ["<C-y>"] = function(bufnr) slow_scroll(bufnr, -1) end,
			},
		},
		layout_config = {
			horizontal = { width = 0.9 },
			preview_width = 0.55,
		},
	},
	pickers = {
		find_files = {
			hidden = true,
			find_command = {'rg', '--ignore', '--hidden', '--files', '-u'},
			-- TODO: ".git" pattern ignores files like .gitlab-ci.yml, gotta fix this
			file_ignore_patterns = { "venv/", "vendor/", ".git/", "__pycache__/", ".mypy_cache/" },
		}
	}
}


vim.keymap.set('n', ',d', builtin.diagnostics, {})
vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',l', builtin.live_grep, {})
vim.keymap.set('n', ',g', builtin.git_commits, {})
vim.keymap.set('n', ',b', builtin.buffers, {})
vim.keymap.set('n', ',r', builtin.lsp_references, {})

vim.keymap.set('n', ',h', builtin.help_tags, {})
vim.keymap.set('x', ',h', builtin.help_tags, {})


local function telescope_black_bg()
  local hl = vim.api.nvim_set_hl
  hl(0, "TelescopeNormal",       { bg = "#000000" })
  hl(0, "TelescopeBorder",       { bg = "#000000", fg = "#999999" })
  hl(0, "TelescopePromptNormal", { bg = "#000000" })
  hl(0, "TelescopePromptBorder", { bg = "#000000", fg = "#999999" })
  hl(0, "TelescopeResultsNormal",{ bg = "#000000" })
  hl(0, "TelescopePreviewNormal",{ bg = "#000000" })
  hl(0, "NormalFloat",           { bg = "#000000" })
	hl(0, "TelescopeSelection",       { fg = "#808080", bg = "#000000", bold = true })
end

-- apply now
telescope_black_bg()

-- and every time a colorscheme is set
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = telescope_black_bg,
})
