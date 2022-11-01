" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/paredit.vim'
Plug 'tpope/vim-fireplace'
Plug 'pangloss/vim-javascript'
call plug#end()

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

" filetype-specific indentation
" http://vim.wikia.com/wiki/Indenting_source_code#Different_settings_for_different_file_types
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
