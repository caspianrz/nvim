local lsp = vim.lsp;
local capabilities = require("blink.cmp").get_lsp_capabilities();

lsp.config('gopls', {
	cmd = { "gopls" },
	root_markers = {
		"go.work",
		"go.mod",
		".git"
	},
	capabalities = capabilities
})

lsp.enable('gopls')
