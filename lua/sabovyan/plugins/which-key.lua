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
      ["t"] = { '<cmd>ToggleTerm<CR>', 'Open Terminal'},
      ["e"] = { '<cmd>NeoTreeRevealToggle<CR>', "Open neo tree" },
      -- ["o"] = { '<cmd>NeoTreeFocus<CR>', "Focus Neo Tree" },
      ["o"] = { function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
        end
      end, "Focus Neo Tree" },
      ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" }, -- Close current file
      ["s"] = { "<cmd>w!<CR>", "Save" },             -- Save current file
      -- See `:help telescope.builtin`
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
        x = { "<cmd>e unknown<CR>", "New Buffer" },
        p = { "<cmd>BufferLineTogglePin<CR>", "Pin Buffer" },
        n = { "<cmd>bnext<CR>", "Next Buffer" }
      },
      -- Telescope
      f = {
        name = "File Search",
        c = { "<cmd>Telescope commands<cr>", "Commands" },
        -- c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        d = { "<md> Telescope diagnostics<CR>", "Find diagnostics" },
        f = { "<cmd>Telescope find_files<CR>", "Find files" },
        g = { ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
          "Find Text Pattern In All Files" },
        h = { "<cmd> Telescope help_tags<CR>", "Search help" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        p = { "<cmd> Telescope git_files<CR>", "Find in Git files" },
        -- r = { "<cmd>Telescope registers<cr>", "Registers" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        t = { "<cmd>TodoTelescope<CR>", "Find hilighted comments" },
        w = { "<cmd> Telescope grep_string<CR>", "Search for current word" }
      },
      g = {
        name = "Git tools",
        l = { "<cmd>LazyGit<cr>", "Lazy Git" },
        b = { "<cmd>GBrowse<cr>", "Open In Browser" }
      },
      -- TODO change save to ctrl - S
    }
    wk.register(mappings, opts)
  end,
}
