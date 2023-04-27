-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
-- See `:help mapleader`
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("i", "jj", "<Esc>")

keymap({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Normal Mode --

keymap({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", opts)
-- vim.keymap.set("n", "<leader>ne", vim.cmd.Ex, { desc = "Open Navite Explorer" })

-- Remap for dealing with word wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- moving between buffers
keymap("n", "<S-l>", "<cmd>bn<cr>", opts)
keymap("n", "<S-h>", "<cmd>bp<cr>", opts)
keymap("n", "<leader>k", "<cmd>bdelete<CR>", opts) -- Close current file
-- vim.keymap.set("n", "<leader>Q", vim.cmd.q, { desc = "Close Editor"})

-- Diagnostic keymaps
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Visual --

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "p", '"_dP', opts)
