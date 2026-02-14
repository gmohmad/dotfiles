-- capabilities (cmp)
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
lsp_capabilities.textDocument.completion.completionItem.snippetSupport = false

-- diagnostics
vim.diagnostic.config({
  virtual_text = { prefix = "■" },
  signs = false,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = true,
})

-- global keymaps for diagnostics
vim.keymap.set('n', ',e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- on_attach: buffer-local mappings when a server attaches
local function on_attach(client, bufnr)
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
  local opts = { buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', 'gca', function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set('n', 'gS', vim.lsp.buf.type_definition, opts)
end

-- helper: register + enable a server in new API
local function register_server(name, cfg)
  cfg = cfg or {}
  -- ensure on_attach/capabilities exist unless explicitly overridden
  if cfg.on_attach == nil then cfg.on_attach = on_attach end
  if cfg.capabilities == nil then cfg.capabilities = lsp_capabilities end

  -- register the config, then enable the server (auto-starts when appropriate)
  vim.lsp.config(name, cfg)
  vim.lsp.enable(name)
end

-- === Register servers ===
-- Python (pyright)
register_server('pyright')

-- buf (buf_ls) - keep the same server name you were using
register_server('buf_ls')

-- gopls with your buildFlags
register_server('gopls', {
  settings = {
    gopls = {
      buildFlags = { "-tags=search goexperiment.arenas" },
    }
  }
})

-- clangd with command-line flags
register_server('clangd', {
  cmd = {
    "clangd",
    "--background-index",
    "--pch-storage=memory",
    "--clang-tidy",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--header-insertion=never",
    "--query-driver=/usr/bin/clang++",
    "--compile-commands-dir=.",
  },
})

-- visual tweak (old highlight name compatibility)
vim.cmd('highlight link LspDiagnosticsVirtualTextError Error')
