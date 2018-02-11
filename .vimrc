set nocompatible
filetype off

set nu			" line numbers on

set tabstop=4
set softtabstop=4	
set expandtab
set shiftwidth=4

set mouse=a

set laststatus=2	" show airline theme all the time

set encoding=utf-8

inoremap jk <ESC>
inoremap kj <ESC>

call plug#begin('~/.vim/plugged')       " begin

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'

call plug#end()                         " end

set background=dark
let g:gruvbox_contrast_dark='hard'
syntax on
colorscheme gruvbox

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1

let g:syntastic_python_checkers=['flake8']

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_ca 
  set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
endfu

com! WP call WordProcessorMode()
