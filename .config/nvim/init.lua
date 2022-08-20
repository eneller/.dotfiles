require("plugins")
require("keybinds")
-- GENERAL SETTINGS
vim.o.termguicolors = true
vim.cmd('colorscheme monokai') -- set colorscheme
vim.o.syntax = 'on'
vim.cmd('set title')
vim.opt.titlestring = [[%{v:progname}: %f %h%m%r%w ]]
-- vim.opt.titlestring = [[%f %h%m%r%w %{v:progname} (%{tabpagenr()} of %{tabpagenr('$')})]]
vim.o.errorbells = false
vim.o.smartcase = true
vim.o.showmode = true
vim.o.ignorecase = true -- case-insensitive search
vim.bo.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.completeopt='menuone,noinsert,noselect'
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.scrolloff = 8
vim.wo.signcolumn = 'yes'
vim.wo.wrap = false
vim.opt.cursorline = true

