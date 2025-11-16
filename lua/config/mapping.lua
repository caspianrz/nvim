-- ┌───────────────────────┐
-- │ ┬┌─┌─┐┬ ┬┌┬┐┌─┐┌─┐┌─┐ │
-- │ ├┴┐├┤ └┬┘│││├─┤├─┘└─┐ │
-- │ ┴ ┴└─┘ ┴ ┴ ┴┴ ┴┴  └─┘ │
-- └───────────────────────┘

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

keymap('n', '<A-k>', 'ddkP', opts)
keymap('n', '<A-Up>', 'ddkP', opts)
keymap('n', '<A-j>', 'ddjP', opts)
keymap('n', '<A-Down>', 'ddjP', opts)
