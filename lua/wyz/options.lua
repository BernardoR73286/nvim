vim.o.wrap = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.cursorcolumn = false
vim.o.undofile = true
vim.o.winborder = "rounded"
vim.o.incsearch = true
vim.o.signcolumn = "yes"
-- indenting
vim.o.shiftwidth = 4
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.scrolloff = 10
-- Decrease update time
vim.o.updatetime = 250
-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

vim.g.mapleader = " "
-- vim.cmd("colorscheme tokyo-night")
-- vim.cmd.colorscheme("moonfly")
vim.cmd.colorscheme("gruber-darker")
-- require("nvim-highlight-colors").setup({})

-- system clipboard
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
