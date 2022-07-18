-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { silent = true })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { silent = true })

-----------------------------
------ Custom mappings ------
-----------------------------
local opts = { noremap = true, silent = true }

-- Remap comma as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = "."

-- Insert --
-- Press jk fast to enter
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
-- Search
vim.keymap.set("n", "<Space>", "/", opts)
vim.keymap.set("n", "<leader><Space>", ":noh<CR>", opts)
-- Buffers saving stuff
vim.keymap.set("n", "<leader><ESC>", ":q!<CR>", opts)
vim.keymap.set("n", "<leader>q", ":wqa!<CR>", opts)
vim.keymap.set("n", "<leader>w", ":w!<CR>", opts)
vim.keymap.set("n", "<leader>e", ":wa!<CR>", opts)
-- Buffers navigation/deletion
vim.keymap.set("n", "<tab>", ":bp<CR>", opts)
vim.keymap.set("n", "<S-tab>", ":bn<CR>", opts)
vim.keymap.set("n", "<leader>d", ":bd<CR>", opts)
-- Splits & tabs
vim.keymap.set("n", "<leader>v", ":vert new %<CR>", opts)
vim.keymap.set("n", "<leader>x", ":new %<CR>", opts)
vim.keymap.set("n", "<leader>d", ":close<CR>", opts)
vim.keymap.set("n", "<S-l>", ":tabnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":tabprevious<CR>", opts)
vim.keymap.set("n", "<leader>f", ":tabe %<CR>", opts)
vim.keymap.set("n", "<leader>D", ":%bd|e#|bd#<CR>", opts)

-- Visual --
-- Copy to clipboard with Ctrl-C
vim.keymap.set("v", "<C-c>", "+y>CR>", opts)

-- Nvimtree
vim.keymap.set("n", "<leader>p", ":NvimTreeToggle<cr>", opts)

-- FzfLua --
vim.keymap.set("n", "<leader>o", "<cmd>lua require('fzf-lua').files()<CR>", opts)
vim.keymap.set("n", "<leader>a", "<cmd>lua require('fzf-lua').live_grep()<CR>", opts)
