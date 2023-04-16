return {
  'folke/which-key.nvim',
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
    wk.setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })

    local opts = {
      mode = "n",     -- NORMAL mode
      prefix = "<leader>",
      buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true,  -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = true,  -- use `nowait` when creating keymaps
    }

    local mappings = {
      ["e"] = { '<cmd>NeoTreeRevealToggle<CR>', "Open neo tree" },
      ["o"] = { '<cmd>NeoTreeFocusToggle<CR>', "Focus Neo Tree" },
      ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" }, -- Close current file
      -- See `:help telescope.builtin`
      ["s"] = { "<cmd>w!<CR>", "Save" },             -- Save current file
      ["<space>"] = { require('telescope.builtin').buffers, '[ ] Find existing buffers' },
      ["/"] = { function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, '[/] Fuzzily search in current buffer' },
      v = {
        name = "Editor",
        e = { vim.cmd.Ex, "Open Navite Explorer" },
        Q = { vim.cmd.q, "Close Editor" },
        ["l"] = { "<cmd>Lazy<CR>", "Lazy vim" }, -- Invoking plugin manager
      },
      b = {
        ["n"] = { "<cmd>e unknown<CR>", "New Buffer" },
      },
      -- Telescope
      f = {
        name = "File Search",
        c = { "<cmd>Telescope commands<cr>", "Commands" },
        -- c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        d = { "<md> Telescope diagnostics<CR>", "Find diagnostics" },
        f = { "<cmd>Telescope find_files<CR>", "Find files" },
        g = { "<cmd>Telescope live_grep<cr>", "Find Text Pattern In All Files" },
        h = { "<cmd> Telescope help_tags<CR>", "Search help" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        p = { "<cmd> Telescope git_files<CR>", "Find in Git files" },
        -- r = { "<cmd>Telescope registers<cr>", "Registers" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        w = { "<cmd> Telescope grep_string<CR>", "Search for current word" }
      },
      g = {
        l = { "<cmd>LazyGit<cr>", "Lazy Git" },
        b = { "<cmd>GBrowse<cr>", "Open In Browser" }
      },
      --   ["q"] = { "<cmd>wqall!<CR>", "Quit" },         -- Quit Neovim after saving the file
      --   -- TODO change save to ctrl - S
      --   s = {
      --     name = "Search",
      --   },
    }
    wk.register(mappings, opts)
  end,
}
