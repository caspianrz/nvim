return {
	{
		"saghen/blink.cmp",
		dependencies = {
			'saghen/blink.lib',
			'rafamadriz/friendly-snippets',
		},
		build = function()
			require('blink.cmp').build():pwait()
		end,
		opts = {
			keymap = {
				preset = "default",
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				menu = { border = 'single', },
				documentation = { auto_show = true, }
			},

			signature = { window = { border = 'single' } },

			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
			},

			fuzzy = { implementation = "rust" },
		},
	},
}
