return {
	'stevearc/conform.nvim',
	keys = {
		{
			'<C-f>',
			function()
				require('conform').format({
					async = true,
					lsp_fallback = true,
				})
			end,
			desc = 'Format',
		},
	},
	opts = {
		formatters_by_ft = {
			haskell = { 'fourmolu' },
			cmake = { 'clang_format' },
			cabal = { 'cabal_gild' },
		},
	},
}
