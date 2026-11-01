return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
  },

  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        providers = {
          lsp = {
            fallbacks = {},
          },
        },
      },
    },
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "zig",
        "c",
        "cpp",
        "rust",
        "lua",
        "vim",
        "vimdoc",
        "html",
        "css",
        "terraform",
        "hcl",
      },
    },
  },
}
