return {
  -- Adds git releated signs to the gutter, as well as utilities for managing changes
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup({
      current_line_blame = true,
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map("n", "]c", function()
          if vim.wo.diff then
            return "]c"
          end
          vim.schedule(function()
            gs.next_hunk()
          end)
          return "<Ignore>"
        end, { expr = true })

        map("n", "[c", function()
          if vim.wo.diff then
            return "[c"
          end
          vim.schedule(function()
            gs.prev_hunk()
          end)
          return "<Ignore>"
        end, { expr = true })

        -- Actions
        map("n", "<leader>gs", gs.stage_hunk, { desc = "Stage hunk" })
        map("n", "<leader>gr", gs.reset_hunk, { desc = "reset hunk" })
        -- map("v", "<leader>hs", function()
        --   gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        -- end,,  )
        -- map("v", "<leader>hr", function()
        --   gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        -- end)
        map("n", "<leader>gS", gs.stage_buffer, { desc = "Stage Buffer" })
        map("n", "<leader>gu", gs.undo_stage_hunk, { desc = "Undo Stage" })
        map("n", "<leader>gR", gs.reset_buffer, { desc = "Reset Buffer" })
        map("n", "<leader>gp", gs.preview_hunk, { desc = "Preview Hunk" })
        map("n", "<leader>gb", function()
          gs.blame_line({ full = true })
        end, { desc = "Preview Blame" })
        -- map("n", "<leader>gb", gs.toggle_current_line_blame, { desc = "Toggle current line blame" })
        -- map("n", "<leader>hd", gs.diffthis, { desc = "Show difference in dual window" })
        map("n", "<leader>gd", function()
          gs.diffthis("~")
        end, { desc = "Show difference in dual window" })
        -- map("n", "<leader>td", gs.toggle_deleted)

        -- Text object
        map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
      end,
    })
  end,
}
