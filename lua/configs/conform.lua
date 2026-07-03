local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    hcl = { "terragrunt_hclfmt" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  formatters = {
    terragrunt_hclfmt = {
      command = "terragrunt",
      args = { "hcl", "fmt", "--stdin" },
      stdin = true,
    },
  },
}

return options
