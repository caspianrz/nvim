local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python" },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

return {
	{
		"neovim/nvim-lspconfig",
		ft = { "py", "python" },
		config = function()
			vim.lsp.config("basedpyright", {
				capabilities = capabilities,
			})

			vim.lsp.enable({
				"basedpyright"
			})
		end,
	},
}
