
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {"<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Open/Close Nvim Tree"}
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 25,
      },
      renderer = {
        group_empty = true,
        indent_markers = {
          enable = true
        }
      },
      filters = {
        dotfiles = true,
      },
    })
  end,
}
