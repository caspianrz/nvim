vim.g.nvim_profile = vim.env.NVIM_PROFILE or "default"

require('config.options')
require('config.mapping')
require('config.lazy')
