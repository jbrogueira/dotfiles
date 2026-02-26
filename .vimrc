" =============================
" Core behavior
" =============================
set nocompatible
set encoding=utf-8
set hidden
set mouse=a
set clipboard=unnamedplus
set backspace=indent,eol,start

syntax on
filetype plugin indent on

" =============================
" UI / readability
" =============================
set number
set cursorline
set showcmd
set ruler
set laststatus=2
set signcolumn=yes
set nowrap
set scrolloff=4
set sidescrolloff=8

" =============================
" Colors (soft, readable)
" =============================
set background=dark
colorscheme desert
set termguicolors

" Softer cursor line
hi CursorLine cterm=NONE ctermbg=236

" Less aggressive search highlight
hi Search cterm=NONE ctermbg=58 ctermfg=NONE
hi IncSearch cterm=reverse

" Comments softer
hi Comment ctermfg=244

" Line numbers subdued
hi LineNr ctermfg=240
hi CursorLineNr ctermfg=250



" =============================
" Searching
" =============================
set ignorecase
set smartcase
set incsearch
set hlsearch

" =============================
" Indentation (defaults)
" =============================
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent
set autoindent

" =============================
" Files / backups
" =============================
set undofile
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" =============================
" Splits
" =============================
set splitbelow
set splitright

" =============================
" Key mappings
" =============================
nnoremap <Space> <Nop>
let mapleader=" "

" Save / quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Clear search highlight
nnoremap <leader>h :nohlsearch<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" =============================
" Language-specific settings
" =============================

" Python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4

" Matlab / Dynare
autocmd FileType matlab setlocal expandtab shiftwidth=4 tabstop=4
autocmd BufNewFile,BufRead *.mod set filetype=matlab

" Julia
autocmd FileType julia setlocal expandtab shiftwidth=4 tabstop=4

" Stata
autocmd BufNewFile,BufRead *.do,*.ado set filetype=stata
autocmd FileType stata setlocal expandtab shiftwidth=4 tabstop=4

" =============================
" LaTeX
" =============================
autocmd FileType tex setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType tex setlocal wrap linebreak
autocmd FileType tex setlocal spell spelllang=en
autocmd FileType tex setlocal textwidth=80

" Compile LaTeX
nnoremap <leader>ll :w<CR>:!pdflatex %<CR>

" =============================
" Markdown
" =============================
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType markdown setlocal wrap linebreak
autocmd FileType markdown setlocal spell spelllang=en
autocmd FileType markdown setlocal conceallevel=2

