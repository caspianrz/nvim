return {
	"xentropic-dev/explorer.dotnet.nvim",
	config = function()
		require("dotnet_explorer").setup({
			renderer = {
				width = 40,
				side = "right",
			},
		})
	end,
	keys = {
		{ "<leader>ee", "<cmd>ToggleSolutionExplorer<cr>", desc = "Toggle Solution Explorer" },
	},
}
