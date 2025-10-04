-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local env = require("../lib/env")

vim.g.autoformat = env.getAutoFormat()

-- By default, 4 spaces per tab is should be the default
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Set 2-space indentation for JavaScript files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript,javascriptreact,typescript,typescriptreact",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true  -- Makes sure spaces are used instead of tabs
  end,
})

local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1
vim.g.is_windows = is_windows
if is_windows then
  vim.opt.shell = "pwsh.exe"
end

local function file_exists(name)
  -- Must use full path
  -- print(name)
  local f = io.open(name, "r")
  return f ~= nil and io.close(f)
end

local python_prog_path = os.getenv("HOME")
  .. "/.venvs/.nvim-venv/"
  .. (is_windows and "Scripts" or "bin")
  .. "/python"
  .. (is_windows and ".exe" or "")

if file_exists(python_prog_path) then
  vim.g.python_host_prog = python_prog_path
  vim.g.python3_host_prog = python_prog_path
end
