-- ┌─────────────────────────┐
-- │ ┌┐┌┌─┐┌─┐  ┌┬┐┬─┐┌─┐┌─┐ │
-- │ │││├┤ │ │───│ ├┬┘├┤ ├┤  │
-- │ ┘└┘└─┘└─┘   ┴ ┴└─└─┘└─┘ │
-- └─────────────────────────┘

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = true,
	keys = {
		{
			"<C-b>",
			function()
				require("neo-tree.command").execute({
					toggle = true,
					source = "filesystem",
					position = "left",
				})
			end,
			desc = "Filesystem",
		},
		{
			"<C-c>",
			function()
				require("neo-tree.command").execute({
					toggle = true,
					source = "buffers",
					position = "left",
				})
			end,
			desc = "Buffers",
		},
	},
}
