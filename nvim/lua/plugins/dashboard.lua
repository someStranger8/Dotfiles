
return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup {
      theme = "doom",
      config = {
        center = {
          {
            icon = "󰈞 ",
            desc = "Find Files",
            key = "f",
            keyformat = "[%s]",
            action = "Telescope"
          },
          {
            icon = "󰒲 ",
            desc = "Open Lazy.nvim Menu",
            key = "l",
            keyformat = "[%s]",
            action = "Lazy"
          },
          {
            icon = " ",
            desc = "Open Mason.nvim Menu",
            key = "m",
            keyformat = "[%s]",
            action = "Mason"
          },
        },
        footer = {
          "Low-level programming is good for the programmer\'s soul.",
        }
      }
    }
  end,
  dependencies = { {"nvim-tree/nvim-web-devicons"}}
}
