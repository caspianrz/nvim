return {
	{
		'neovim/nvim-lspconfig',
		lazy = false,
		config = function()
			require('lua-ls')
		end
	}
}
