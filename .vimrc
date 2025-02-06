" filetype plugin indent on

" syntax on

set nowrap

set hlsearch
set ignorecase
set smartcase

set autoindent

" set ruler
set number

set list
" set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
" set smarttab

set clipboard=unnamed
" set clipboard+=unnamed

" 削除のみ
vnoremap d "_d
nnoremap d "_d
vnoremap D "_D
nnoremap D "_D
vnoremap x "_x
nnoremap x "_x
vnoremap s "_s
nnoremap s "_s
vnoremap S "_S
nnoremap S "_S
vnoremap c "_c
nnoremap c "_c
vnoremap C "_C
nnoremap C "_C

" 切り取り
nnoremap t d
vnoremap t x
nnoremap tt dd
nnoremap T D

" 上書きペーストでヤンクしない
xnoremap p "_dP

nnoremap j gj
nnoremap k gk

inoremap jj <ESC>
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>l

nnoremap <Tab> >>
nnoremap <S-Tab> <<