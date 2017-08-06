" Vim Configuration
" Hkri, Aug 2017

" Vim settings
set nocompatible             " no legacy vi compatibility
filetype off                 " required
syntax enable
set encoding=utf-8
set showcmd 

" Color scheme
colorscheme wombat256dave
syntax on

" Whitespace settings
set nowrap                   " no wrapping
set tabstop=2 shiftwidth=2   " tab = 2 spaces
set expandtab                " tabs -> spaces
set term=screen-256color     " color for tmux

" Searching
set ignorecase               " case insensitive
set incsearch                " incremental search
set hlsearch                 " highlight matches

" Start Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim Plugins
Plugin 'ajmwagar/vim-deus'
Plugin 'chankaward/vim-railscasts-theme'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'myusuf3/numbers.vim'

" End Vundle Plugins
call vundle#end()            " required
filetype plugin indent on    " required

""" Plugins Setup

" Powerline Fonts and Airline
set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_theme='simple'

" Line Numbers
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
set number
