-- ┌──────────┐
-- │ ┬┌┐┌┬┌┬┐ │
-- │ │││││ │  │
-- │ ┴┘└┘┴ ┴  │
-- └──────────┘

require('config.options')
require('config.mapping')
require('config.lazy')

vim.cmd([[
	highlight Normal guibg=NONE ctermbg=NONE
	highlight NormalNC guibg=NONE ctermbg=NONE
	highlight SignColumn guibg=NONE ctermbg=NONE
	highlight EndOfBuffer guibg=NONE ctermbg=NONE
	highlight LineNr guibg=NONE ctermbg=NONE
	highlight CursorLineNr guibg=NONE ctermbg=NONE
	highlight FoldColumn guibg=NONE ctermbg=NONE
	highlight NonText guibg=NONE ctermbg=NONE
	highlight StatusLine guibg=NONE ctermbg=NONE
	highlight StatusLineNC guibg=NONE ctermbg=NONE
	highlight TabLine guibg=NONE ctermbg=NONE
	highlight TabLineFill guibg=NONE ctermbg=NONE
]])

vim.cmd('colorscheme zellner')
