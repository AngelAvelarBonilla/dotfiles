-- TODO AAB:
-- Move Nvimtree bindings into tree file
-- Change bindings for navigating between vim splits

-- Keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

