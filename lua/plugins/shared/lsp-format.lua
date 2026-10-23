-- ┌───────────────────────────────┐
-- │ ┬  ┌─┐┌─┐  ┌─┐┌─┐┬─┐┌┬┐┌─┐┌┬┐ │
-- │ │  └─┐├─┘  ├┤ │ │├┬┘│││├─┤ │  │
-- │ ┴─┘└─┘┴    └  └─┘┴└─┴ ┴┴ ┴ ┴  │
-- └───────────────────────────────┘

return {
	'lukas-reineke/lsp-format.nvim',
	keys = {
		{
			'<C-f>',
			function()
				vim.lsp.buf.format({ async = true })
			end,
			desc = 'Format',
		},
	},
	config = true,
}
