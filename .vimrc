set number
set ruler
colorscheme habamax

set nocompatible
filetype plugin indent on

nnoremap <SPACE> <Nop>
let mapleader = " "

set modelines=0

set number
set ruler

" Encoding
set encoding=utf-8

" preventing file creation
set noswapfile
set noundofile
set nobackup

" formatting
set tabstop=4
set shiftwidth=4
set expandtab

" auto completion
set wildmenu
set hidden

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
set cursorline
set ttyfast

set spell
set is
set ignorecase
set smartcase

" Netrw
nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <Leader>da :Lexplore<CR>
let g:netrw_liststyle=3
let g:netrw_banner=0

set hlsearch
set showmatch
set ignorecase

" max line length
set cc=80

" vim-plug
call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gi <plug>(lsp-definition)
    nmap <buffer> gd <plug>(lsp-declaration)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gl <plug>(lsp-document-diagnostics)
    nmap <buffer> <f2> <plug>(lsp-rename)
    nmap <buffer> <f3> <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
