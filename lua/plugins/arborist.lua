return {
  {
    "arborist-ts/arborist.nvim",
    lazy = false,
    opts = {
      prefer_wasm = true,
      update_cadence = "manual",
      install_popular = true,
      ensure_installed = {
        "lua",
        "bash",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
		"c",
		"cpp",
		"cmake",
		"ocaml",
      },

      -- optional: disable TS features for specific languages
      disable = {
        indent = {
          "markdown",
        },
        highlight = {},
      },

      -- optional: custom parsers not in the registry
      overrides = {
        -- my_language = {
        --   url = "https://github.com/me/tree-sitter-my-language",
        -- },
      },

      -- optional: limit parallel clone/build jobs
      concurrency = nil,
    },
    config = function(_, opts)
      require("arborist").setup(opts)

      -- Optional: Tree-sitter folds using Neovim's built-in TS foldexpr
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.o.foldlevel = 99
    end,
  },
}
