-- ┌───────────────────────────────┐
-- │ ┌─┐┌─┐┌─┐┌┬┐┬    ┬   ┌─┐┌─┐   │
-- │ │ ││  ├─┤││││    │   └─┐├─┘   │
-- │ └─┘└─┘┴ ┴┴ ┴┴─┘  ┴─┘ └─┘┴     │
-- └───────────────────────────────┘

local lsp = vim.lsp
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.config('ocamllsp', {
	filetypes = {
		'ocaml',
		'ocaml.mli',
		'ocaml.interface',
		'ocaml.ocamllex',
		'reason',
	},
	capabilities = capabilities,
})

lsp.enable({ 'ocamllsp' })
