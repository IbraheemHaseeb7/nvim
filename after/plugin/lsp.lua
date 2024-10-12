require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "ts_ls", "pyright" }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").ts_ls.setup {}
require("lspconfig").pyright.setup {}

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
