local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	local out = vim.fn.system({
		'git', 'clone', '--filter=blob:none', '--branch=stable',
		lazyrepo, lazypath
	})

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ 'Lazy git clone failed\n', 'ErrorMsg' },
			{ out,                       'WarningMsg' },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local profile = vim.g.nvim_profile

local shared = {
	{ import = "plugins.shared" }
}

local profiles = {
	default = {},
	rust = {
		{ import = "plugins.rust" },
	},
	cpp = {
		{ import = "plugins.cpp" },
	},
}

local selected = profiles[profile]

if not selected then
	error("Unkown profile " .. profile .. ".")
end

local spec = {}

vim.list_extend(spec, shared)
vim.list_extend(spec, selected)

require('lazy').setup({
	spec = spec,
	install = {},
	checker = { enabled = true },
	change_detection = { notify = false },
})
