-- ┌───────────────────────────────┐
-- │ ┌─┐┬  ┌─┐┌┐┌┌─┐┌┬┐  ┬  ┌─┐┌─┐ │
-- │ │  │  ├─┤││││ ┬ ││  │  └─┐├─┘ │
-- │ └─┘┴─┘┴ ┴┘└┘└─┘─┴┘  ┴─┘└─┘┴   │
-- └───────────────────────────────┘

local lsp = vim.lsp;
local capabilities = require("blink.cmp").get_lsp_capabilities();

lsp.config('clangd', {
	filetypes = { 'cc', 'cpp', 'h', 'c', 'hpp' },
	capabilities = capabilities,
})

lsp.enable({ 'clangd' })
