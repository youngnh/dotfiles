" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/paredit.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

colorscheme solarized
set number
set showmode
set showcmd
set expandtab
set nowrap
set hlsearch
set smartcase
set autochdir
set hidden

" Paredit customizations
" - disable electric return
let g:paredit_electric_return=0
