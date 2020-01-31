" Don't try to be vi compatible
set nocompatible

" Basic setups
set ttyfast
set encoding=utf-8
set modelines=0

" Required for Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" LIST OF PLUGINS
Plugin 'preservim/nerdtree'         " Directory viewer and manager
Plugin 'tpope/vim-surround'         " Tool to surround text
Plugin 'vim-airline/vim-airline'    " Status bar at the bottom of the screen
Plugin 'ctrlpvim/ctrlp.vim'         " Fuzzy file finder/manager
Plugin 'altercation/vim-colors-solarized' " A color scheme


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax and search highlighting by default
syntax enable
set hlsearch

" Show line numbers and relative position
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Remap - to go the end of the line 
nnoremap - $

" Remap ; to act as : (Avoid using the Shift key)
nnoremap ; :

" Highlights lines that go past 80 columns
highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)
