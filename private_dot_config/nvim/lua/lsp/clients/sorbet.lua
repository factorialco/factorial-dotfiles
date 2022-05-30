local M = {}
local lspconfig = require("lspconfig")

M.get_ops = function(on_attach, capabilities)
	return {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end

return M
