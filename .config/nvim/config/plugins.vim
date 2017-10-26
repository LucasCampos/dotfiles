call plug#begin()
Plug 'ervandew/supertab'        " Needed to allow YCM and Ultisnips to play along
Plug 'tpope/vim-abolish'        " Replace on batteries
Plug 'tpope/vim-obsession'      " Replace on batteries
Plug 'tpope/vim-commentary'     " Add shortcut to comment line
Plug 'SirVer/ultisnips'         " Snippets mechanism
Plug 'honza/vim-snippets'       " Actual snippets
Plug 'kshenoy/vim-signature'    " Show marks
Plug 'LucasCampos/vim-template' " Templates for new files

Plug 'majutsushi/tagbar'
" Plug 'vim-scripts/taglist.vim'  " Show list of tags
Plug 'xolox/vim-easytags'       " Automatically update tags
Plug 'xolox/vim-misc'           " Required for easytags

Plug 'scrooloose/nerdtree'      " File tree navigator
Plug 'ctrlpvim/ctrlp.vim'       " Fuzzy file searcher

Plug 'severb/monoacc'           " Themes
Plug 'vim-scripts/oceandeep'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

Plug 'yggdroot/indentline'      " Show the line identation
Plug 'vim-airline/vim-airline'  " Statusbar
Plug 'vim-airline/vim-airline-themes'

Plug 'vhdirk/vim-cmake'         " CMake integration
Plug 'neomake/neomake'          " Linter
Plug 'Valloric/YouCompleteMe'   " Autocompletion
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'ludovicchabant/vim-gutentags'
" Plug 'vim-scripts/Conque-GDB'   " GDB integration
 
Plug 'sheerun/vim-polyglot'     " Big language pack
Plug 'lervag/vimtex'            " Latex pack
Plug 'matze/vim-tex-fold'       " Automatically fold latex environments
Plug 'rust-lang/rust.vim'
" Plug 'kien/rainbow_parentheses.vim'

Plug 'terryma/vim-multiple-cursors'
" Plug 'spolu/dwm.vim'

Plug 'edkolev/tmuxline.vim'

Plug 'embear/vim-localvimrc'    " Allows for the usage of local configurations
Plug 'sjl/gundo.vim'           " Show undo tree
call plug#end()        
filetype plugin indent on 
