require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>n", function()
  local wo = vim.wo
  wo.number = not wo.number
  wo.relativenumber = wo.number and true or false
end, { desc = "Toggle line numbers" })

map("n", "<leader>sp", function()
  vim.opt.spell = not vim.opt.spell
  if vim.opt.spell:get() then
    vim.opt.spelllang = "en_gb"
  end
end, { desc = "Toggle spell check" })

map("n", "<leader>tz", "<cmd>!zig test %<CR>", { desc = "Zig test current file" })
map("n", "<leader>rz", "<cmd>!zig build run<CR>", { desc = "Zig build and run exec" })

