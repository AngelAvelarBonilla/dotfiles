return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    -- gcc, clang, and make required to build fzf-native as it does not ship binaries
    { "nvim-telescope/telescope-fzf-native.nvim", build = 'make' },
    "nvim-tree/nvim-web-devicons",
  },
  config = function ()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          }
        }
      }
    })

    telescope.load_extension("fzf")

    -- Keybinds
    local map = vim.keymap.set

    map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
    map("n", "<leader>fr", ":Telescope oldfiles<CR>", { desc = "Find recent files" })
    map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
    map("n", "<leader>fc", ":Telescope grep_string<CR>", { desc = "Grep for string under cursor" })
  end,
}

