-- ┌────────────────────────┐
-- │  ┬┌─┐┌┬┐┌─┐  ┬  ┌─┐┌─┐ │
-- │  │└─┐ │ └─┐  │  └─┐├─┘ │
-- │ └┘└─┘ ┴ └─┘  ┴─┘└─┘┴   │
-- └────────────────────────┘

local lsp = vim.lsp;

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.config('ts_ls', {
	capabilities = capabilities,
})

lsp.enable({ 'ts_ls' })
