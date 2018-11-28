" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/paredit.vim'
call plug#end()

set number
set showmode
set showcmd
set ruler
set autoindent
set expandtab
set nowrap
set hlsearch
set smartcase
set autochdir
set hidden
