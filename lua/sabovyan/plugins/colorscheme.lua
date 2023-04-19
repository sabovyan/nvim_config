return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    -- load the colorscheme here
    local catpuccin = require 'catppuccin'

    catpuccin.setup {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        -- loops = {},
        functions = { "italic" },
        keywords = { "italic" },
        strings = { "italic" },
        -- variables = {},
        -- numbers = {},
        -- booleans = {},
        --   properties = {},
        --   types = {},
        --   operators = {},
      },
      transparent_background = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        neotree = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    }
    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
  end,
}
-- return {
--   -- Theme inspired by Atom
--   'navarasu/onedark.nvim',
--   priority = 1000,
--   config = function()
--     -- require('onedark').setup {
--     --   --   colors = {
--     --   --     bright_orange = "#ff8800", -- define a new color
--     --   --     green = '#00ffaa',         -- redefine an existing color
--     --   --   },
--     --   --
--     --   highlights = {
--     --     --     -- [] = {},
--     --     ["@variable"] = { fg = '#e5c07b' },
--     --     ["@parameter"] = { fg = '#e5c07b' },
--     --     --     -- ["@string"] = {
--     --     --     --   fg = '$bright_orange',
--     --     --     --   bg = '#00ff00',
--     --     --     --   fmt = 'bold'
--     --     --     -- },
--     --     --     ["@function"] = { fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic' },
--     --     --     ["@function.builtin"] = { fg = '#0059ff' }
--     --     ["@keyword"] = { fmt = 'italic' },
--     --   }
--     -- }
--     --
--     vim.cmd.colorscheme 'onedark'
--   end,
-- }


-- -- tokyonight
-- return {
--   {
--     "folke/tokyonight.nvim",
--     config = function()
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }
