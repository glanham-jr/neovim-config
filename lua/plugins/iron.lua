return {
  "hkupty/iron.nvim",
  -- event = "VeryLazy",
  config = function()
    local iron = require("iron.core")
    iron.setup({
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
          sh = {
            -- Can be a table or a function that
            -- returns a table (see below)
            command = { "zsh" },
          },
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require("iron.view").bottom(40),
        -- If the highlight is on, you can change how it looks
        -- For the available options, check nvim_set_hl
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
      },
    })
  end,
  -- keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  keys = {
    { "<space>po", "<cmd>IronReplHere<cr>", desc = "Iron Repl Here" },
    {
      "<space>psc",
      function()
        require("iron.core").send_motion()
      end,
      desc = "Iron send_motion",
    },
    {
      "<space>psf",
      function()
        require("iron.core").send_file()
      end,
      desc = "Iron send_file",
    },
    {
      "<space>psl",
      function()
        require("iron.core").send_line()
      end,
      desc = "Iron send_line",
    },
    {
      "<space>psm",
      function()
        require("iron.core").send_mark()
      end,
      desc = "Iron send_mark",
    },
    {
      "<space>pmc",
      function()
        require("iron.core").mark_motion()
      end,
      desc = "Iron mark_motion",
    },
    {
      "<space>pmd",
      function()
        require("iron.core").remove_mark()
      end,
      desc = "Iron remove_mark",
    },
    {
      "<space>ps<cr>",
      function()
        require("iron.core").cr()
      end,
      desc = "Iron cr",
    },
    {
      "<space>ps<space>",
      function()
        require("iron.core").interrupt()
      end,
      desc = "Iron interrupt",
    },
    {
      "<space>psq",
      function()
        require("iron.core").exit()
      end,
      desc = "Iron exit",
    },
    {
      "<space>pcl",
      function()
        require("iron.core").clear()
      end,
      desc = "Iron clear",
    },
  },
}
