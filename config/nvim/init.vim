set nocp

packadd! dracula_pro

call plug#begin('~/.config/nvim/plugged')


Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


Plug 'edkolev/tmuxline.vim'

Plug 'itchyny/lightline.vim'
Plug 'junegunn/rainbow_parentheses.vim'

call plug#end()

syntax on
filetype plugin indent on

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:dracula_colorterm = 0
colorscheme dracula_pro
set background=dark

" appearance
set cursorline
set hlsearch
set number
set relativenumber
set numberwidth=5
set ruler
set cmdheight=1

"" behavior
set autoread
set autowrite
set backspace=indent,eol,start
set encoding=utf-8
set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set noerrorbells
set nowrap
set scrolloff=3
set sidescrolloff=15
set wrapscan

" tab completion
set path+=**
set wildmode=list:longest,full
set wildmenu
set wildignore+=*/node_modules/*

" indentation
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

" mappings
let mapleader=","

" lightline
let g:lightline = {
      \ 'colorscheme': 'dracula_pro',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'readonly', 'filename', 'modified', 'charhexvalue']
      \   ]
      \ },
      \ 'component': {
      \    'charhexvalue': '0x%B'
      \ }
      \ }

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

augroup rainbow_parens
  au!
  au FileType c,h,cpp,hpp,go,lisp,python,javascript,typescript,javascriptreact,typescriptreact,ruby,eruby RainbowParentheses
augroup END
