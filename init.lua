if vim.g.vscode then
  -- VSCode extension
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
