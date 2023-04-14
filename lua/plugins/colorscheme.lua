return {
  -- Theme inspired by Atom
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    -- require('onedark').setup {
    --   --   colors = {
    --   --     bright_orange = "#ff8800", -- define a new color
    --   --     green = '#00ffaa',         -- redefine an existing color
    --   --   },
    --   --
    --   highlights = {
    --     --     -- [] = {},
    --     ["@variable"] = { fg = '#e5c07b' },
    --     ["@parameter"] = { fg = '#e5c07b' },
    --     --     -- ["@string"] = {
    --     --     --   fg = '$bright_orange',
    --     --     --   bg = '#00ff00',
    --     --     --   fmt = 'bold'
    --     --     -- },
    --     --     ["@function"] = { fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic' },
    --     --     ["@function.builtin"] = { fg = '#0059ff' }
    --     ["@keyword"] = { fmt = 'italic' },
    --   }
    -- }
    --
    vim.cmd.colorscheme 'onedark'
  end,
}
