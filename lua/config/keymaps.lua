-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("v", "<leader>pmc", function()
  require("iron.core").mark_visual()
end, { noremap = true, silent = true, desc = "Iron mark_visual" })

vim.keymap.set("v", "<leader>psc", function()
  require("iron.core").visual_send()
end, { noremap = true, silent = true, desc = "Iron visual_send" })
