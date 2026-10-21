-- ┌──────────────────────────────┐
-- │ ┌┬┐┬─┐┌─┐┌─┐┌─┐┬┌┬┐┌┬┐┌─┐┬─┐ │
-- │  │ ├┬┘├┤ ├┤ └─┐│ │  │ ├┤ ├┬┘ │
-- │  ┴ ┴└─└─┘└─┘└─┘┴ ┴  ┴ └─┘┴└─ │
-- └──────────────────────────────┘

return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup()

            require("nvim-treesitter").install({
                "c",
                "cpp",
				"cmake",
            })

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end,
    },
}

