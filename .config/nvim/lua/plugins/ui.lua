return {
  { "nvim-lualine/lualine.nvim", config = true },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'warm'
      }
      require('onedark').load()
    end,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
