require("catppuccin").setup({
  --   highlight_overrides = {
		-- mocha = function(colors)
		-- 	return {
		-- 		Type = { fg = colors.blue },
		-- 		Statement = { fg = colors.red },
		--         Conditional = { fg = colors.yellow },
		-- 			}
		-- 		end,
		-- 	},
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    -- flavour = "auto" -- will respect terminal's background
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { }, -- Change the style of comments
        conditionals = { },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { },
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
		mocha = {
			rosewater = "#ea6962",
			flamingo = "#ea6962",
			red = "#ea6962",
			maroon = "#ea6962",
			pink = "#d3869b",
			mauve = "#d3869b",
			peach = "#e78a4e",
			yellow = "#d8a657",
			green = "#a9b665",
			teal = "#89b482",
			sky = "#89b482",
			sapphire = "#89b482",
			blue = "#7daea3",
			lavender = "#7daea3",
			subtext1 = "#d5c4a1",
			subtext0 = "#bdae93",
			overlay2 = "#a89984",
			overlay1 = "#928374",
			overlay0 = "#595959",
			surface2 = "#4d4d4d",
			surface1 = "#686869",--[[  #5c5d5e", ]]
			surface0 = "#292929",
			mantle = "#191b1c",
			crust = "#141617",
            text = "#d1c9b6",--[[ "#C1BEBE", ]]
            base = "#1c1c1c",--[[ "#151515", ]]
		},
	},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        nvimtree = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

