
return {
  "mason-org/mason-lspconfig.nvim", 
  dependencies = { 
    { "saghen/blink.cmp" },
    { "mason-org/mason.nvim" },
    {"neovim/nvim-lspconfig"},
  },
  config = function()
    require("mason-lspconfig").setup {
      automatic_enable = { "harper_ls", "pyright" }
    }
  end,
}
