-- ┌────────────────────────────────┐
-- │ ┌─┐┬ ┬┬─┐┬┌─┐┬ ┬┌┬┐  ┬  ┌─┐┌─┐ │
-- │ ├─┘└┬┘├┬┘││ ┬├─┤ │   │  └─┐├─┘ │
-- │ ┴   ┴ ┴└─┴└─┘┴ ┴ ┴   ┴─┘└─┘┴   │
-- └────────────────────────────────┘

local lsp = vim.lsp;
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.config('pyright', {
	capabilities = capabilities,
})

lsp.enable({ 'pyright' })
