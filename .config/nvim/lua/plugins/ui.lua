return {
  { "nvim-lualine/lualine.nvim", config = true },
  { 
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({})
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
