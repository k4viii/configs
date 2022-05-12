
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- require 'lspconfig'.html.setup {
--   capabilities = capabilities,
-- }
--  require 'lspconfig'.pylsp.setup {
--    capabilities = capabilities,
--  }
--  require'lspconfig'.ccls.setup {
--    capabilities = capabilities
--  }

local lsp_installer = require("nvim-lsp-installer")


local servers = {
  "bashls",
  "pylsp",
  "clangd",
  "tsserver",
  "emmet_ls",
  "asm_lsp"
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end

lsp_installer.on_server_ready(function(server)
  local default_opts = {
    on_attach = on_attach,
  }
    server:setup(default_opts)
  end)
