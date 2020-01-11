" Don't try to be vi compatible
set nocompatible

" Enable syntax highlighting by default
syntax enable

" Show line numbers
set number

" Rendering
set ttyfast

" Encoding
set encoding=utf-8

" Security
set modelines=0

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
