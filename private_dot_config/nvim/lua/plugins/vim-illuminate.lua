-- TODO: <a-n> and <a-p> not working
vim.cmd("hi def IlluminatedWordText gui=underline")
vim.cmd("hi def IlluminatedWordRead gui=underline")
vim.cmd("hi def IlluminatedWordWrite gui=underline")

vim.g.Illuminate_useDeprecated = 1

require('illuminate').configure({
    filetypes_denylist = {
        'NvimTree',
        'fugitive',
    }
})
