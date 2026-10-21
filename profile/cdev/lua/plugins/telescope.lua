-- ┌─────────────────────────────┐
-- │ ┌┬┐┌─┐┬  ┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐ │
-- │  │ ├┤ │  ├┤ └─┐│  │ │├─┘├┤  │
-- │  ┴ └─┘┴─┘└─┘└─┘└─┘└─┘┴  └─┘ │
-- └─────────────────────────────┘

return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local telescope = require("telescope")
			local tbuiltin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					layout_config = { prompt_position = "top" },
					sorting_strategy = "ascending",
				},
			})
			vim.keymap.set("n", "<C-p>", tbuiltin.find_files, { desc = "Find files" })
		end,
	},
	{
		'nvim-telescope/telescope-file-browser.nvim',
		dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
	},
}
