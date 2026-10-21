-- ┌────────────────────────────┐
-- │ ┌─┐┌─┐┌┬┐┬┌─┌─┐  ┬  ┌─┐┌─┐ │
-- │ │  ├─┤│││├┴┐├┤   │  └─┐├─┘ │
-- │ └─┘┴ ┴┴ ┴┴ ┴└─┘  ┴─┘└─┘┴   │
-- └────────────────────────────┘

local lsp = vim.lsp;
local capabilities = require("blink.cmp").get_lsp_capabilities();

lsp.config("neocmake", {
	capabilities = capabilities,
})
lsp.enable("neocmake")
