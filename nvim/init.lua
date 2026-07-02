-- include
require("config.lazy")

-- options
vim.opt.number = true
vim.opt.wrap = false
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab= true
vim.opt.termguicolors = true
vim.opt.showtabline = 2
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }

-- keybinds
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set('n', '<C-,>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-.>', ':vertical resize +5<CR>', { noremap = true, silent = true })

