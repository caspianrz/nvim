local lsp = vim.lsp;

lsp.config('css-variable-lsp', {
	cmd = {
		"css-variable-lsp",
	},
	filetypes = { 'css', 'scss', 'sass', 'less', 'html', 'vue', 'svelte', 'astro' },
	init_options = {},
})

lsp.enable({ 'css-variable-lsp' })
