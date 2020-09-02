" Don't try to be vi compatible
set nocompatible

" Basic setups
set ttyfast
set encoding=utf-8
set modelines=0


call plug#begin('~/.vim/plugged')

" LIST OF PLUGINS
Plug 'preservim/nerdtree'         " Directory viewer and manager
Plug 'tpope/vim-surround'         " Tool to surround text
Plug 'vim-airline/vim-airline'    " Status bar at the bottom of the screen
Plug 'ctrlpvim/ctrlp.vim'         " Fuzzy file finder/manager
Plug 'dense-analysis/ale'         " Linter system
Plug 'tomasiser/vim-code-dark'    " VSCode color theme

call plug#end()

filetype plugin indent on    " required

" Enable syntax and search highlighting by default
syntax enable
set hlsearch

" Show line numbers and relative position
set number
set relativenumber

" stats and visual settings
set ruler
set colorcolumn=80
set splitbelow

" Blink cursor on error instead of beeping
set visualbell

" Remap - to go the end of the line
nnoremap - $

" Remap ; to act as : (Avoid using the Shift key)
nnoremap ; :

" Enables the color scheme
colorscheme codedark
let g:airline_theme = 'codedark'

