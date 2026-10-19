-- ┌───────────────────────────────┐
-- │ ┌─┐┬  ┌─┐┌┐┌┌─┐┌┬┐  ┬  ┌─┐┌─┐ │
-- │ │  │  ├─┤││││ ┬ ││  │  └─┐├─┘ │
-- │ └─┘┴─┘┴ ┴┘└┘└─┘─┴┘  ┴─┘└─┘┴   │
-- └───────────────────────────────┘

local lsp = vim.lsp;
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.config('clangd', {
	cmd = {
		"clangd",
		"--background-index",
		"--header-insertion=iwyu",
	},
	filetypes = { 'cc', 'cpp', 'h', 'c', 'hpp' },
	capabilities = capabilities,
})

lsp.enable({ 'clangd' })
