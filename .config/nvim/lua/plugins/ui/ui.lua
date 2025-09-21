return {
  { "nvim-lualine/lualine.nvim", config = true },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { 
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
