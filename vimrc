syntax on
set backspace=indent,eol,start
set ai
set ruler                       " show cursor position
set tabstop=2		                " set tab width to 4
set number                      " show line numbers
set shiftwidth=2                " autoindent 2 spaces
set smarttab
set expandtab
set softtabstop=4
set autoindent
set showcmd
set nocompatible

let mapleader=","

colorscheme darkblue 

filetype indent on
filetype on
filetype plugin on

syntax on

" FullScreen in MacVim
if has("gui_macvim")
    set fuopt+=maxhorz
    set guioptions-=r
    set guioptions-=R

    colorscheme rdark
    let rdark_current_line=1
endif
