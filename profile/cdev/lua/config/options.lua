-- ┌─────────────────────┐
-- │ ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐ │
-- │ │ │├─┘ │ ││ ││││└─┐ │
-- │ └─┘┴   ┴ ┴└─┘┘└┘└─┘ │
-- └─────────────────────┘

local options = {
	backup = false,
	clipboard = 'unnamedplus',
	ignorecase = true,
	shiftwidth = 4,
	tabstop = 4,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	signcolumn = 'yes',
	autoindent = false,
	smartindent = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	virtual_text = true,
	underline = true
})
