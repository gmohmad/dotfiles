-- Custom plug configs
require("plugconfigs._cmp")
require("plugconfigs._lsp")
require("plugconfigs._toggleterm")
require("plugconfigs._telescope")
require("plugconfigs._comment")
require("plugconfigs._catppuccin")
require("plugconfigs._auto-save")
require("plugconfigs._debugger")
require("plugconfigs._treesitter")
require("plugconfigs._markdown-preview")

-- Default plug configs
require("mason").setup()
require("mason-lspconfig").setup()
require("nvim-autopairs").setup()
require("nvim-surround").setup()
require('dap-go').setup()
require('dapui').setup()
