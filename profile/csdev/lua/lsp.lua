local lsp = vim.lsp;
local capabalities = require("blink.cmp").get_lsp_capabilities();
local home = os.getenv("HOME")

lsp.config('roslyn', {
	cmd = { home .. '/.dotnet/tools/roslyn-language-server', '--stdio' },
	capabalities = capabalities
})

lsp.enable('roslyn')
