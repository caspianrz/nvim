

vim.lsp.config("texlab", {
  cmd = { "texlab" },
  filetypes = { "tex", "bib" },
  root_markers = {
    ".latexmkrc",
    "latexmkrc",
    ".git",
  },
})

vim.lsp.enable("texlab")
