
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  keys = {
    {"<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Cycle next buffer" },
    {"<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Cycle previous buffer" },
    {"<Leader>bc", "<Cmd>bdelete<CR>", desc = "Close buffer" },
    {"<Leader>bn", "<Cmd>enew<CR>", desc = "New buffer" },
    {"<Leader>bp", "<Cmd>BufferLinePick<CR>", desc = "Pick buffer to focus" },
    {"<Leader>bmn", "<Cmd>BufferLineMoveNext<CR>", desc = "Move buffer next" },
    {"<Leader>bmp", "<Cmd>BufferLineMovePrev<CR>", desc = "Move buffer previous" },
    {"<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", desc = "Go to buffer 1" },
    {"<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", desc = "Go to buffer 2" },
    {"<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", desc = "Go to buffer 3" },
    {"<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", desc = "Go to buffer 4" },
    {"<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", desc = "Go to buffer 5" },
  },
  config = function()
    require("bufferline").setup {
      options = {
	      separator_style = "thin",
        indicator = {
	        style = "underline"
	      },
	      offsets = {
          {
            filetype = "NvimTree",
	          text = "File Explorer",
	          text_align = "center",
	          separator = true,
	        }
	      }
      },
      highlights = {
        fill = {
          guibg = "NONE",
          ctermbg = "NONE",
        },
        background = {
          guibg = "NONE",
          ctermbg = "NONE",
        },
        tab = {
          guibg = "NONE",
          ctermbg = "NONE",
        },
        tab_selected = {
          guibg = "NONE", 
          ctermbg = "NONE",
        },
        buffer_visible = {
          guibg = "NONE",
          ctermbg = "NONE",
        },
        buffer_selected = {
          guibg = "NONE",
          ctermbg = "NONE",
        },
      },
    }
  end,
}
