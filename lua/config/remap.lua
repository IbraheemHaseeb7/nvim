vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>s", require('substitute').operator, { noremap = true })
vim.keymap.set("n", "<leader>ss", require('substitute').line, { noremap = true })
vim.keymap.set("n", "<leader>S", require('substitute').eol, { noremap = true })
vim.keymap.set("x", "<leader>s", require('substitute').visual, { noremap = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "=", "<CMD>q<CR>", { desc = "Close neovim" })
vim.keymap.set("v", "0", "\"+y<CR>", { desc = "Yank to system register" })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { noremap = true, silent = true })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.opt['guicursor'] = ""
