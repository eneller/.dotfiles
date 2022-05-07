"LOAD VIM-PLUG
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" SETTINGS SECTION
colorscheme monokai " enable monokai theme
set noerrorbells " disable error bells if not disabled by terminal
set nocompatible " Disable old VI compatibility
syntax enable " Syntax highlighting
set showmode " Show current mode
set number " Show line numbers
set relativenumber "show relative line numbers except for the one im on
set visualbell " Blink cursor on error instead of beeping 
set incsearch " search while typing
set smartcase " ignore case if lowercase, match case if uppercase used
set wildmode=longest,list,full " enable autocomplete
set tabstop=4 softtabstop=4 " replace tabs with 4 spaces
"set expandtab
set smartindent 
set termguicolors " colors???
set exrc
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

"PLUGINS SECTION
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'lervag/vimtex'
call plug#end()

"KEYBINDS SECTION

