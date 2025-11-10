-- TODO AAB:
-- Move Nvimtree bindings into tree file

-- Keybindings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map({ "n", "v" }, "gg", "gg0", { noremap = true, silent = true, desc = "Go to start of file and first column" })
map({ "n", "v" }, "G", "G$", { noremap = true, silent = true, desc = "Go to end of file and last column" })

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

