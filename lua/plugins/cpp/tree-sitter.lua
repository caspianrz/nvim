return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function()
			require("nvim-treesitter").install({
				"c",
				"cpp",
				"cmake",
			})
		end,
	},
}
