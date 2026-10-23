local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp", "cmake" },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

return {
	{
		"neovim/nvim-lspconfig",
		ft = { "c", "cpp", "objc", "objcpp", "cmake" },
		config = function()
			vim.lsp.config("clangd", {
				capabilities = capabilities,
			})

			vim.lsp.config("neocmake", {
				capabilities = capabilities,
			})

			vim.lsp.enable({
				"clangd",
				"neocmake",
			})
		end,
	},
}
