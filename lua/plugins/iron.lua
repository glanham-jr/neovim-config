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
    { "<space>p", "<NOP>", desc = "Iron" },
    { "<space>po", "<cmd>IronReplHere<cr>", desc = "Iron Repl Here" },
    { "<space>ps", "<NOP>", desc = "Send" },
    {
      "<space>psc",
      function()
        require("iron.core").send_motion()
      end,
      desc = "send_motion",
    },
    {
      "<space>psf",
      function()
        require("iron.core").send_file()
      end,
      desc = "send_file",
    },
    {
      "<space>psl",
      function()
        require("iron.core").send_line()
      end,
      desc = "send_line",
    },
    {
      "<space>psm",
      function()
        require("iron.core").send_mark()
      end,
      desc = "send_mark",
    },
    { "<space>pm", "<NOP>", desc = "Mark" },
    {
      "<space>pmc",
      function()
        require("iron.core").mark_motion()
      end,
      desc = "mark_motion",
    },
    {
      "<space>pmd",
      function()
        require("iron.core").remove_mark()
      end,
      desc = "remove_mark",
    },
    {
      "<space>ps<cr>",
      function()
        require("iron.core").cr()
      end,
      desc = "cr",
    },
    {
      "<space>p<space>",
      function()
        require("iron.core").interrupt()
      end,
      desc = "interrupt",
    },
    {
      "<space>pq",
      function()
        require("iron.core").exit()
      end,
      desc = "exit",
    },
    {
      "<space>pc",
      function()
        require("iron.core").clear()
      end,
      desc = "clear",
    },
  },
}
