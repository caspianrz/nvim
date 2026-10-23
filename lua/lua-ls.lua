local lsp = vim.lsp;
local capabilities = require("blink.cmp").get_lsp_capabilities()

lsp.config('lua_ls', {
	capabilities = capabilities,
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if path ~= vim.fn.stdpath('config') then
				return
			end
		end
		client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
			runtime = {
				version = 'LuaJIT'
			},
			workspace = {
				checkThirdParty = true,
				library = {
					vim.env.VIMRUNTIME,
					'${3rd}/luv/library'
				}
			}
		})
	end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
})

lsp.enable({ 'lua_ls' })
