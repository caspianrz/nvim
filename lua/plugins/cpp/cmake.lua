return {
	-- CMake language server and syntax support
	{
		"Civitasv/cmake-tools.nvim",
		ft = { "cmake" },
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {},
	},
}
