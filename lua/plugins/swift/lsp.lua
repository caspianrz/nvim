local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.api.nvim_create_autocmd("FileType", {
    pattern = "swift",
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})

return {
    {
        "neovim/nvim-lspconfig",

        ft = { "swift" },

        config = function()
            vim.lsp.config("sourcekit", {
                capabilities = capabilities,

                cmd = { "sourcekit-lsp" },

                filetypes = { "swift" },

                root_markers = {
                    "Package.swift",
                    ".git",
                },
            })

            vim.lsp.enable("sourcekit")
        end,
    },
}

