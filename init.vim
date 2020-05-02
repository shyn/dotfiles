set nocompatible
filetype off

call plug#begin(stdpath('data') . '/plugged')

" enhance
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'bling/vim-airline'

" python
Plug 'deoplete-plugins/deoplete-jedi'

" intellisence|autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

let g:deoplete#enable_at_startup = 1

filetype plugin indent on

set cursorline
set colorcolumn=80
set nowrap

set laststatus=2	" always show the status line

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround
set autoindent

set backspace=indent,eol,start

" speed up command typing by saving the shift to type ':'
nnoremap ; :

let mapleader = ' '
let maplocalleader = ','


map <leader>t :NERDTreeToggle<CR>

""" airline config

