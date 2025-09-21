-- Keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

