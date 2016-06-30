set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-abolish.git'
Plugin 'tpope/vim-commentary'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-obsession'

Plugin 'rust-lang/rust.vim'
Plugin 'lervag/vimtex'
Plugin 'klen/python-mode'
Plugin 'vim-scripts/Efficient-python-folding'

Plugin 'severb/monoacc'
Plugin 'vim-scripts/oceandeep'

Plugin 'yggdroot/indentline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-dispatch'
Plugin 'JuliaLang/julia-vim'
call vundle#end()            " required
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

" compile latex as soon as saving (NO LONGER NEEDED. vimtex  does that)
" autocmd BufWritePost *.tex Dispatch! latexmk -pdf 

" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Allow dictionaries
nnoremap <F2> :call ToggleConceal()<CR>
nnoremap <F5> :set spell! spelllang=en_us<CR>
nnoremap <F6> :set spell! spelllang=pt_br<CR>

" Change leader key
let mapleader = " "

" Allow copying to system clipboard
set pastetoggle=<F2>
set clipboard=unnamed

"Options for pandoc
autocmd BufWritePost *.md Pandoc pdf

"Options for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"YouCompleteMeOptions
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Ultisnips files
autocmd FileType c UltiSnipsAddFiletypes c
autocmd FileType cpp UltiSnipsAddFiletypes cpp
autocmd FileType py UltiSnipsAddFiletypes py python
autocmd FileType snippets UltiSnipsAddFiletypes snippets
autocmd FileType tex UltiSnipsAddFiletypes tex
autocmd FileType md UltiSnipsAddFiletypes markdown

" python-mode plugins
map <Leader>g :call RopeGotoDefinition()<CR>
let g:pymode_rope = 0
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Store relative line number jumps in the jumplist.
" Treat long lines as break lines (useful when moving around in them).
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

" Tab navigation like Firefox.
nnoremap <Leader><S-tab> :tabprevious<CR>
nnoremap <Leader><tab>   :tabnext<CR>
nnoremap <Leader>t       :tabnew<CR>

autocmd FileType tex :set tw=79
