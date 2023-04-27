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
				nvimtree = true,
				telescope = true,
				notify = false,
				mini = false,
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
					surface2 = "#4B4F51",
					surface1 = "#2A2D2E",
					surface0 = "#232728",
					base = "#1D2021",
					mantle = "#191C1D",
					crust = "#151819",
				},
				latte = {
					rosewater = "#c14a4a",
					flamingo = "#c14a4a",
					pink = "#945e80",
					mauve = "#945e80",
					red = "#c14a4a",
					maroon = "#c14a4a",
					peach = "#c35e0a",
					yellow = "#a96b2c",
					green = "#6c782e",
					teal = "#4c7a5d",
					sky = "#4c7a5d",
					sapphire = "#4c7a5d",
					blue = "#45707a",
					lavender = "#45707a",
					text = "#654735",
					subtext1 = "#7b5d44",
					subtext0 = "#8f6f56",
					overlay2 = "#a28368",
					overlay1 = "#b6977a",
					overlay0 = "#c9aa8c",
					surface2 = "#A79C86",
					surface1 = "#C9C19F",
					surface0 = "#DFD6B1",
					base = "#fbf1c7",
					mantle = "#F3EAC1",
					crust = "#E7DEB7",
				},
			},
		})
		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
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
