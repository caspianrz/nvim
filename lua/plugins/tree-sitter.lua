-- ┌──────────────────────────────┐
-- │ ┌┬┐┬─┐┌─┐┌─┐┌─┐┬┌┬┐┌┬┐┌─┐┬─┐ │
-- │  │ ├┬┘├┤ ├┤ └─┐│ │  │ ├┤ ├┬┘ │
-- │  ┴ ┴└─└─┘└─┘└─┘┴ ┴  ┴ └─┘┴└─ │
-- └──────────────────────────────┘

return {
	'nvim-treesitter/nvim-treesitter',
	enabled = false, -- nvim-treesitter is archived and now has some problems.
	branch = "master",
	config = function()
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = {
				'c',
				'cpp',
				'lua',
				'javascript',
				'typescript',
				'python',
				'cmake',
			},
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end
}
