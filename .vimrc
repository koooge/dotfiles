" encoding settings
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,sjis
set fileformats=unix,dos,mac

" edit settings
set number
set cursorline

" indent settings
set autoindent
set smartindent
set cindent
set smarttab
set expandtab

set tabstop=2
set shiftwidth=2
set softtabstop=0

if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType c setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp setlocal sw=4 sts=4 ts=4 et
  autocmd FileType java setlocal sw=4 sts=4 ts=4 et
endif

" set cursorcolumn
" set virtualedit=onemore
" set smartindent

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" key bindings
nnoremap j gj
nnoremap k gk
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" vim settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
" set hidden
set showcmd
set showmatch
set laststatus=2
" set visualbell
set wildmode=list:longest

" syntax settings
set term=builtin_linux
set ttytype=builtin_linux
colorscheme desert
syntax on
