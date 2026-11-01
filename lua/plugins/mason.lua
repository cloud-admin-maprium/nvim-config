return {
  "williamboman/mason-lspconfig.nvim",
  event = "VeryLazy",
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = { "codelldb", "stylua" },
      },
    },
  },
  opts = {
    -- LSP servers only; mason-lspconfig rejects non-lspconfig names.
    ensure_installed = {
      "clangd",
      "zls",
      "pyright",
      "ruff",
    },
  },
}
