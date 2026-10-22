-- ┌───────────────────────────────┐
-- │ ┌─┐┬  ┌─┐┌┐┌┌─┐┌┬┐  ┬  ┌─┐┌─┐ │
-- │ │  │  ├─┤││││ ┬ ││  │  └─┐├─┘ │
-- │ └─┘┴─┘┴ ┴┘└┘└─┘─┴┘  ┴─┘└─┘┴   │
-- └───────────────────────────────┘

local lsp = vim.lsp;
local capabilities = require("blink.cmp").get_lsp_capabilities();

lsp.config('clangd', {
	capabilities = capabilities,
})

lsp.enable({ 'clangd' })
