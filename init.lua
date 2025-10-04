if vim.g.vscode then
  -- VSCode extension
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("lib.env").load_dotenv("./.env");
  require("config.lazy")
end
