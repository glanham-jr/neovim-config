-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 then
  vim.opt.shell = "pwsh.exe"
end

local function file_exists(name)
  -- Must use full path
  print(name)
  local f = io.open(name, "r")
  return f ~= nil and io.close(f)
end

local python_prog_path = os.getenv("HOME") .. "/.venvs/.nvim-venv/bin/python"
if file_exists(python_prog_path) then
  vim.g.python_host_prog = python_prog_path
  vim.g.python3_host_prog = python_prog_path
end
