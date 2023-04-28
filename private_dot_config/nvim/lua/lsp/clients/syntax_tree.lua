local M = {}
local lspconfig = require("lspconfig")

M.setup = function(on_attach, capabilities)
  lspconfig.syntax_tree.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

return M
