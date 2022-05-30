local colors = require("catppuccin.api.colors").get_colors()
vim.cmd("highlight NvimTreeGitNew gui=NONE guifg=" .. colors.green .. " guibg=NONE")

vim.cmd([[
let g:nvim_tree_git_hl = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_special_files = { 'README.md': 1, 'Gemfile': 1, 'package.json': 1 }
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
]])

require("nvim-tree").setup({
	open_on_setup = false,
	view = {
		mappings = {
			list = {
				{ key = "s", action = "vsplit" },
				{ key = "i", action = "split" },
				{ key = "p", action = "parent_node" },
			},
		},
	},
	renderer = {
		indent_markers = {
			enable = true,
		},
		icons = {
			webdev_colors = true,
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
