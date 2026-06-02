local lsp = vim.lsp;
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('hls', {
	cmd = { 'haskell-language-server-wrapper', '--lsp' },
	filetypes = { 'haskell', 'lhaskell', 'cabal' },
	root_markers = {
		'hie.yaml',
		'stack.yaml',
		'cabal.project',
		'*.cabal',
		'package.yaml',
		'.git',
	},
})

vim.lsp.enable('hls')
