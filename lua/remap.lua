-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("n","<leader>e", vim.cmd.Ex, {desc = "Open Navite Explorer"})
vim.keymap.set("i", "jj", "<Esc>")
