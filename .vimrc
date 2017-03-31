" edit settings
set tabstop=2
set expandtab
set number
set cursorline
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
syntax on
colorscheme molokai
set t_Co=256
