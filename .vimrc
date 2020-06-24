set nocompatible 

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'raimondi/delimitmate'
" Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'

call plug#end()

set noswapfile

set hidden
set shortmess+=F
set noshowmode
set number
set tabstop=4
set shiftwidth=4 
set expandtab
set smartindent
set softtabstop=4    


:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

highlight GitGutterAdd    ctermfg=8
highlight GitGutterChange ctermfg=8
highlight GitGutterDelete ctermfg=8

let g:airline_theme='base16'

