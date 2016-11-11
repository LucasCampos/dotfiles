if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin()
Plug 'ervandew/supertab'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kshenoy/vim-signature'
Plug 'LucasCampos/vim-template'

Plug 'lervag/vimtex'

Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'severb/monoacc'
Plug 'vim-scripts/oceandeep'

Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'
Plug 'Valloric/YouCompleteMe'

Plug 'tpope/vim-dispatch'
Plug 'sheerun/vim-polyglot'
call plug#end()            " required
filetype plugin indent on    " required

set background=dark
" colorscheme monoacc
" colorscheme oceandeep
syntax on

let g:isConcealToggled=0
function ToggleConceal()
    if g:isConcealToggled
        set conceallevel=2
        let g:isConcealToggled=0
    else
        set conceallevel=0
        let g:isConcealToggled=2
    endif
endfunction

" Bind movement on windows do ctrl
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Real programmers don't use TABs but spaces
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

" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Allow dictionaries
nnoremap <F2> :call ToggleConceal()<CR>
nnoremap <F5> :set spell! spelllang=en_us<CR>
nnoremap <F6> :set spell! spelllang=pt_br<CR>

" TODO Maker
nnoremap <F3> :MakeTODO<CR>

" Change leader key
let mapleader = " "

" Allow copying to system clipboard
set pastetoggle=<F2>
set clipboard=unnamed

" Neomake options
let g:neomake_cpp_enable_markers=['clang']
let g:neomake_cpp_clang_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g", "-I", "inc"]

autocmd! BufWritePost * Neomake

"YouCompleteMeOptions
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:deoplete#enable_at_startup = 1

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Toggle tagbar
nmap <F3> :TagbarToggle<CR>

" Ultisnips files
autocmd FileType c UltiSnipsAddFiletypes c
autocmd FileType cpp UltiSnipsAddFiletypes cpp
autocmd FileType py UltiSnipsAddFiletypes py python
autocmd FileType snippets UltiSnipsAddFiletypes snippets
autocmd FileType tex UltiSnipsAddFiletypes tex
autocmd FileType md UltiSnipsAddFiletypes markdown


" Vim-airline opitions
set laststatus=2
let g:airline_powerline_fonts = 2
"
" polyglot options
let g:polyglot_disabled = ['latex']

" Store relative line number jumps in the jumplist.
" Treat long lines as break lines (useful when moving around in them).
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

" Tab navigation like Firefox.
nnoremap <Leader><S-tab> :tabprevious<CR>
nnoremap <Leader><tab>   :tabnext<CR>
nnoremap <Leader>t       :tabnew<CR>

let g:tex_flavor = "latex"
autocmd FileType tex :set tw=79
