return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    -- load the colorscheme here
    local catpuccin = require("catppuccin")

    catpuccin.setup({
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
        telescope = true,
        notify = false,
        mini = true,
        neotree = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
      color_overrides = {
        mocha = {
          rosewater = "#EA6962",
          flamingo = "#EA6962",
          pink = "#D3869B",
          mauve = "#D3869B",
          red = "#EA6962",
          maroon = "#EA6962",
          peach = "#BD6F3E",
          yellow = "#D8A657",
          green = "#A9B665",
          teal = "#89B482",
          sky = "#89B482",
          sapphire = "#89B482",
          blue = "#7DAEA3",
          lavender = "#7DAEA3",
          text = "#D4BE98",
          subtext1 = "#BDAE8B",
          subtext0 = "#A69372",
          overlay2 = "#8C7A58",
          overlay1 = "#735F3F",
          overlay0 = "#958272",
          -- surface2 = "#4B4F51",
          -- surface1 = "#2A2D2E",
          -- surface0 = "#232728",
          base = "#1D2021",
          mantle = "#191C1D",
          crust = "#151819",
        },
      },
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.crust },
          FloatBorder = { bg = colors.crust, fg = colors.crust },
          VertSplit = { bg = colors.base, fg = colors.surface0 },
          CursorLineNr = { fg = colors.mauve },
          Pmenu = { bg = colors.crust, fg = "" },
          PmenuSel = { bg = colors.surface0, fg = "" },
          TelescopeSelection = { bg = colors.surface0 },
          TelescopePromptCounter = { fg = colors.mauve },
          TelescopePromptPrefix = { bg = colors.surface0 },
          TelescopePromptNormal = { bg = colors.surface0 },
          TelescopeResultsNormal = { bg = colors.mantle },
          TelescopePreviewNormal = { bg = colors.crust },
          TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
          TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
          TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
          TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
          TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
          TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
          IndentBlanklineChar = { fg = colors.surface0 },
          IndentBlanklineContextChar = { fg = colors.surface2 },
          GitSignsChange = { fg = colors.peach },
          NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
          NvimTreeExecFile = { fg = colors.text },
        }
      end,
    })

    -- setup must be called before loading
    vim.cmd.colorscheme("catppuccin")
  end,
}

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme gruvbox]])
--   end,
-- }
-- return {
--   "savq/melange-nvim",
--   config = function()
--     vim.cmd.colorscheme("melange")
--   end,
-- }

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
