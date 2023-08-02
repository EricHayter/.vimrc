set nocompatible
filetype plugin indent on

nnoremap <SPACE> <Nop>
let mapleader = " "

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" preventing file creation
set noswapfile
set noundofile
set nobackup

" formatting
set ts=4
set shiftwidth=4
set autoindent
set expandtab

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
set cursorline
set ttyfast

" Netrw
nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <Leader>da :Lexplore<CR>
let g:netrw_liststyle=3
let g:netrw_banner=0

set hlsearch
set showmatch
set ignorecase

set cc=80

colorscheme darcula

" vim-plug
call plug#begin()
    Plug 'dense-analysis/ale'
call plug#end()

" ALE config
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_hover_cursor = 1
let g:ale_set_balloons = 1

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <silent> gd :ALEGoToDefinition <CR>
nnoremap <silent> <F2> :ALERename <CR>

"pylsp
let g:ale_linters = {
\   'python': ['pylsp', 'pylint', 'mypy'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8'],
\}
let g:ale_python_autopep8_options = '--aggressive'
