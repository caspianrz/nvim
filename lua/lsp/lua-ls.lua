-- ┌──────────────────────┐
-- │ ┬  ┬ ┬┌─┐  ┬  ┌─┐┌─┐ │
-- │ │  │ │├─┤  │  └─┐├─┘ │
-- │ ┴─┘└─┘┴ ┴  ┴─┘└─┘┴   │
-- └──────────────────────┘

local lsp = vim.lsp;

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

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
		Lua = {}
	}
})

lsp.enable({ 'lua_ls' })
