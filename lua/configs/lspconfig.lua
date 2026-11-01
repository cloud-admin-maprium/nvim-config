local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

-- Common opts
local base = {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
}

-- Basic servers (no special overrides)
for _, name in ipairs { "clangd", "tofuls", "zls", "pyright", "ruff" } do
  vim.lsp.config(name, base)
end

-- Overrides / server-specific settings
vim.lsp.config(
  "clangd",
  vim.tbl_deep_extend("force", base, {
    cmd = { "clangd", "--background-index", "--clang-tidy" },
  })
)

vim.lsp.config(
  "zls",
  vim.tbl_deep_extend("force", base, {
    cmd = { "zls" },
    filetypes = { "zig", "zon" },
  })
)

vim.lsp.config(
  "tofuls",
  vim.tbl_deep_extend("force", base, {
    cmd = { "tofu-ls", "serve", "--log-file=/dev/null" },
    filetypes = { "terraform", "terraform-vars", "opentofu" },
    root_markers = { ".terraform", ".git", ".tofu" },
  })
)

vim.lsp.config(
  "pyright",
  vim.tbl_deep_extend("force", base, {
    settings = {
      python = {
        pythonPath = vim.fn.expand "~/.venv/bin/python",
        --      venvPath = vim.fn.expand("~"),
        --      venv = ".venv",
        --      analysis = {
        --        autoSearchPaths = true,
        --        useLibraryCodeForTypes = true,
        --      },
      },
    },
    filetypes = { "py" },
  })
)

-- Enable the servers
vim.lsp.enable { "clangd", "tofuls", "zls", "pyright", "ruff" }
