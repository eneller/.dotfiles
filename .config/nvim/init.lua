local o = vim.o
local wo = vim.wo
local bo = vim.bo
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
--
-- INSTALL PACKER https://github.com/wbthomason/packer.nvim#bootstrapping
local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
  local use = use
  -- add you plugins here like:
  use 'neovim/nvim-lspconfig'
  end
)
