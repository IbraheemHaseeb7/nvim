vim.diagnostic.config({
  virtual_text = false,
})

vim.keymap.set(
  "",
  "<Leader>m",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)
