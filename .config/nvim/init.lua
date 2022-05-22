local o = vim.o
local wo = vim.wo
local bo = vim.bo
-- Install packer https://github.com/wbthomason/packer.nvim#bootstrapping
-- GLOBAL SETTINGS
o.termguicolors = true
vim.cmd('colorscheme monokai') -- set colorscheme
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = true
bo.swapfile = false
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.incsearch = true
o.hidden = true
o.completeopt='menuone,noinsert,noselect'
bo.autoindent = true
bo.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
wo.number = true
wo.relativenumber = true
o.scrolloff = 8
wo.signcolumn = 'yes'
wo.wrap = false

-- KEYBINDS
