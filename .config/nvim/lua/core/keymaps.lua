-- TODO AAB:
-- Move Nvimtree bindings into tree file

-- Keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map("n", "gg", "gg0", { noremap = true, silent = true, desc = "Go to start of file and first column" })

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

