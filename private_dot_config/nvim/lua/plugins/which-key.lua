local keymap = vim.keymap.set
require("which-key").setup({
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false, -- adds help for operators like d, y, ...
            motions = false, -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
        },
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 0, 0, 0, 0 }, -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = { min = 2, max = 25 }, -- min and max height of the columns
        width = { min = 10, max = 70 }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
    },
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
})

keymap("n", "<Space>", "<NOP>", { silent = true })
vim.g.mapleader = " "

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
}

-- LSP Hover
keymap('n', 'K', vim.lsp.buf.hover)

local mappings = {
    n = { ":NvimTreeToggle<CR>", "NerdTree" },
    f = { ":NvimTreeFindFile<CR>", "Find File" },
    h = { ":let @/=''<CR>", "No Highlight" },
    r = { "<cmd>FzfLua resume<cr>", "Resume search" },

    ["<space>"] = { "<cmd>FzfLua files<cr>", "Fuzzy search" },

    g = {
        name = "Git",
        b = { "<cmd>Git blame<cr>", "Blame" },
        s = { "<cmd>FzfLua git_status<cr>", "Git status" },
        c = { "<cmd>FzfLua git_commits<cr>", "Git commits" },
    },

    l = {
        name = "LSP",
        d = { "<cmd>FzfLua lsp_definitions<CR>", "Definitions" },
        r = { "<cmd>FzfLua lsp_references<CR>", "References" },
        t = { "<cmd>FzfLua lsp_typedefs<CR>", "Type defs" },
        R = { vim.lsp.buf.rename, "Rename" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        m = { "<cmd>Mason<cr>", "Mason" },
    },

    s = {
        name = "Search",
        b = { "<cmd>FzfLua buffers<cr>", "Find buffer" },
        t = { "<cmd>FzfLua live_grep_native<cr>", "Text" },
        w = { "<cmd>FzfLua grep_cword<cr>", "Current word" },
    },

    d = {
        name = "Diagnostics",
        a = { vim.diagnostic.open_float, "Current line" },
        w = { "<cmd>FzfLua diagnostics_workspace<cr>", "Workspace" },
        d = { vim.diagnostic.goto_next, "Next Diagnostic" },
        s = { vim.diagnostic.goto_prev, "Previous Diagnostic" },
    },
}

local wk = require("which-key")
wk.register(mappings, opts)
