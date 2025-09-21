return { 
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function ()
    local mason = requre("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup 
