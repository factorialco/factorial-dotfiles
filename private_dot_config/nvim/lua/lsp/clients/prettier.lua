local prettier = require("prettier")

prettier.setup({
  bin = 'prettier',
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  },
})
