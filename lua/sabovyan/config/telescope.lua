local telescope = require("telescope")
-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
telescope.setup {
  defaults = {
    --
    --   file_ignore_patterns = {
    --     "node_modules",
    --     "build",
    --     "dist",
    --     -- "yarn.lock",
    --     ".git"
    --   },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    -- pickers = {
    --   find_files = {
    --     -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
    --     find_command = {
    --       "rg",
    --       "--files",
    --       "--hidden",
    --       "--glob",
    --       "!**/.git/*",
    --       -- "!**/node_modules"
    --     },
    -- },
    --
  }
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')


