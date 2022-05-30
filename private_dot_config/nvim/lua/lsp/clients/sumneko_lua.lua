local M = {}

M.get_ops = function(on_attach)
	return {
		on_attach = on_attach,
		settings = {
			Lua = {
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
				diagnostics = {
					globals = {
						"global",
						"vim",
						"use",
						"describe",
						"it",
						"assert",
						"before_each",
						"after_each",
					},
				},
			},
		},
	}
end

return M
