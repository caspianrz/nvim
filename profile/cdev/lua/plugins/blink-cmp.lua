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
				["<C-Space>"] = { "show", "hide" },
				["<C-j>"] = { "select_next", "fallback" },
				['<C-k>'] = { 'select_prev', 'fallback' },
				['<Tab>'] = { 'accept', 'snippet_forward', 'fallback' },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				menu = { border = 'single', },
				documentation = { auto_show = true, auto_show_delay_ms = 500 },
				ghost_text = { enabled = true },
			},

			signature = {
				enabled = true, 
				window = {
					border = 'single'
				}
			},

			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
			},

			fuzzy = {
				implementation = "rust"
			},
		},
	},
}
