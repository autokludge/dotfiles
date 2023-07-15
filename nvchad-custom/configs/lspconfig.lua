local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
-- local on_attach = lspconfig.on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
-- local capabilities = lspconfig.on_attach

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  --filetypes = {"rust"},
  --root_dir = util.root_pattern("Cargo.toml"),
  --settings = {
  --  ['rust-analyzer'] = {
  --    cargo = {
  --      allFeatures = true,
  --    }
  --  }
  --}
})
