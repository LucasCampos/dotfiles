set background=dark
syntax on

" Don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" General options
set nocp " non vi compatible mode
set number
set relativenumber
set hlsearch
set ignorecase
set smartcase
set incsearch
set hlsearch
set cindent
set smartindent
set autoindent
set showcmd

noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>

autocmd FileType cpp nnoremap <Leader>b ^istd::raise(SIGINT); <ESC>
autocmd FileType cpp nnoremap <Leader>r :CMake -DCMAKE_BUILD_TYPE=Debug <CR> <bar> :make <CR> :ConqueGdb build/
