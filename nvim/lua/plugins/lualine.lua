
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup {
      options = {
        icons = true,
        theme = "pywal16-nvim",
      },
      sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diff", "diagnostics"},
        lualine_c = {"filetype", "filename", "lsp_status"},
        lualine_x = {"encoding", "fileformat"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
      }
    }
  end,
}
