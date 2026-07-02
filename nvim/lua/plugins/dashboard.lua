
return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup {
      theme = "doom",
      config = {
        center = {
          {
            desc = "Low-level programming is good for the programmer\'s soul.",
          }
        }
      }
    }
  end,
  dependencies = { {"nvim-tree/nvim-web-devicons"}}
}
