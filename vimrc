
" Basic setups
set ttyfast
set encoding=utf-8
set modelines=0

call plug#begin('~/.vim/plugged')

" LIST OF PLUGINS
Plug 'tpope/vim-surround'         " Tool to surround text
Plug 'tpope/vim-fugitive'         " Git integration
Plug 'tpope/vim-dispatch'         " Make and parse errors
Plug 'vim-airline/vim-airline'    " Status bar at the bottom of the screen
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

" Spacing and alignment settings
set scrolloff=5
set autoindent
set cindent
set wrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Blink cursor on error instead of beeping
set visualbell

let mapleader = " "

" Remaps and key bindings
noremap - $
nnoremap ; :
nnoremap <C-j> <PageDown>
nnoremap <C-k> <PageUp>
nnoremap ç ~

" Enables the color scheme
colorscheme codedark 
let g:airline_theme = 'codedark'

" Custom autocomplete
inoremap {<cr> {<cr>}<esc>O
