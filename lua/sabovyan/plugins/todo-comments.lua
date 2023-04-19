return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      highlight = {
        multiline = true,               -- enable multine todo comments
        multiline_pattern = "^.",       -- lua pattern to match the next multiline from the start of the matched keyword
        multiline_context = 10,         -- extra lines that will be re-evaluated when changing a line
        before = "",                    -- "fg" or "bg" or empty
        keyword = "fg",               -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after = "fg",                     -- "fg" or "bg" or empty
        pattern = [[.*<(KEYWORDS)\b*]], -- pattern or table of patterns, used for highlighting (vim regex)
        comments_only = true,           -- uses treesitter to match keywords in comments only
        max_line_len = 400,             -- ignore lines longer than this
        exclude = {},                   -- list of file types to exclude highlighting
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        -- pattern = [[\b(KEYWORDS)\b]], -- ripgrep regex
        pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    }
  end
}
