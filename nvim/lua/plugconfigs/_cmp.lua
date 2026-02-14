-- import nvim-cmp plugin safely
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end


cmp.setup({
	completion = {
		completeopt = "menu,menuone,noinsert"
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-u>"] = cmp.mapping.scroll_docs(-1),
		["<C-d>"] = cmp.mapping.scroll_docs(1),
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	  -- sources for autocompletion
	sources = cmp.config.sources({
		{ name = "nvim_lsp", max_item_count=100}, -- LSP
		{ name = "buffer" }, -- text within the current buffer, max_item_count, priority, keyword_length
		{ name = "path" }, -- file system paths
	}),
	window = {
		winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	formatting = {
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = '[LSP]',
			    buffer = '[BUFFER]',
			    path = '[PATH]',
			}
		item.menu = menu_icon[entry.source.name]
		return item
	  end,
	},
})

