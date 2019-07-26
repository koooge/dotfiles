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
" set expandtab

set tabstop=2
set shiftwidth=2
set softtabstop=0

if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType sh setlocal sw=2 sts=2 ts=2 et
  autocmd FileType c,cpp setlocal sw=4 sts=4 ts=4 et
  autocmd FileType java setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript,json setlocal sw=2 sts=2 ts=2 et
  autocmd FileType html,css setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl setlocal sw=2 sts=2 ts=2 et
  autocmd FileType python setlocal sw=4 sts=4 ts=4 et
  autocmd FileType go setlocal sw=2 sts=2 ts=2
endif

" set cursorcolumn
" set virtualedit=onemore

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
"" ctags
set tags=.tags;$HOME
nnoremap <C-]> g<C-]>
"" global
nnoremap <C-g> :Gtags 
nnoremap <C-i> :Gtags -f %<CR>
nnoremap <C-j> :GtagsCursor<CR>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

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
set clipboard=unnamed,autoselect

" syntax settings
set term=builtin_linux
set ttytype=builtin_linux
colorscheme desert
syntax on

" plugins
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
call plug#end()
let g:go_fmt_command = "goimports"
