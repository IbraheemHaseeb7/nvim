require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "intelephense", "lua_ls", "gopls", "ts_ls", "clangd", "pyright", "tailwindcss", "eslint" }
})

vim.lsp.config("lua_ls", {})
vim.lsp.config("gopls", {})
vim.lsp.config("ts_ls", {})
vim.lsp.config("tailwindcss", {})
vim.lsp.config("eslint", {})
vim.lsp.config("clangd", {})
vim.lsp.config("pyright", {})
vim.lsp.config("intelephense", {})

vim.lsp.config('dartls', {
	settings = {
		dart = {
			analysisExcludedFolders = {
				vim.fn.expand("$HOME/.pub-cache"),
				vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
				vim.fn.expand("/opt/homebrew"),
				vim.fn.expand("$HOME/work/development/flutter/"),
			}
		}
	}
})

local lsp_zero = require('lsp-zero')
local cmp = require('cmp')


--lsp_zero.preset('recommended')

cmp.setup({
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),  -- Move to next item
        ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Move to previous item
        ['<C-Space>'] = cmp.mapping.complete(),        -- Trigger completion
        ['<C-e>'] = cmp.mapping.close(),               -- Close completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
    },
    sources = {
        { name = 'nvim_lsp' },  -- LSP source
        { name = 'buffer' },     -- Buffer source
        { name = 'path' },       -- Path source
    },
})
