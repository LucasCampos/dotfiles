" set background=dark
" colorscheme oceandeep
" syntax on
" let g:solarized_termcolors=256
" let g:solarized_termtrans = 1
"
set background=dark
set t_Co=256
"set background=light
" let g:gruvbox_contrast_light="hard"
" let g:gruvbox_italic=1
" let g:gruvbox_invert_signs=0
" let g:gruvbox_improved_strings=0
" let g:gruvbox_improved_warnings=1
" let g:gruvbox_undercurl=1
" let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
" set termguicolor

set encoding=utf-8

" Don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" General options
set nocp " non vi compatible mode
set number
" set relativenumber
set hlsearch
set ignorecase
set smartcase
set incsearch
set hlsearch
set cindent
set smartindent
set autoindent
set showcmd
set backspace=2 " make backspace work like most other apps

" set fdm=indent

" noremap <Up>    <Nop>
" noremap <Down>  <Nop>
" noremap <Left>  <Nop>
" noremap <Right> <Nop>

" inoremap <Up>    <Nop>
" inoremap <Down>  <Nop>
" inoremap <Left>  <Nop>
" inoremap <Right> <Nop>

autocmd FileType cpp nnoremap <Leader>b ^istd::raise(SIGINT); <ESC>
autocmd FileType cpp nnoremap <Leader>r :CMake -DCMAKE_BUILD_TYPE=Debug <CR> <bar> :make <CR> :ConqueGdb build/
