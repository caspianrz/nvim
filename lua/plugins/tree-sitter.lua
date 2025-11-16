-- ┌──────────────────────────────┐
-- │ ┌┬┐┬─┐┌─┐┌─┐┌─┐┬┌┬┐┌┬┐┌─┐┬─┐ │
-- │  │ ├┬┘├┤ ├┤ └─┐│ │  │ ├┤ ├┬┘ │
-- │  ┴ ┴└─└─┘└─┘└─┘┴ ┴  ┴ └─┘┴└─ │
-- └──────────────────────────────┘

return {
	'nvim-treesitter/nvim-treesitter',
	tag = 'v0.9.3',
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

		-- For EBNF Syntax
		require 'nvim-treesitter.parsers'.get_parser_configs().ebnf = {
			install_info = {
				url = 'https://github.com/RubixDev/ebnf.git',
				files = { 'src/parser.c' },
				location = 'crates/tree-sitter-ebnf',
				branch = 'main',
			},
		}
		vim.filetype.add { extension = { ebnf = 'ebnf' } }
	end
}
