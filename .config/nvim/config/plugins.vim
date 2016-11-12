" Automatically installs Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin()
Plug 'ervandew/supertab'        " Needed to allow YCM and Ultisnips to play along
Plug 'tpope/vim-abolish'        " Replace on batteris
Plug 'tpope/vim-commentary'     " Add shortcut to commend line
Plug 'SirVer/ultisnips'         " Snippets mechanism
Plug 'honza/vim-snippets'       " Actual snippets
Plug 'kshenoy/vim-signature'    " Show marks
Plug 'LucasCampos/vim-template' " Templates for new files

Plug 'vim-scripts/taglist.vim'  " Show list of tags
Plug 'xolox/vim-easytags'       " Automatically update tags
Plug 'xolox/vim-misc'           " Required for easytags

Plug 'ctrlpvim/ctrlp.vim'       " Fuzzy file searcher

Plug 'severb/monoacc'           " Themes
Plug 'vim-scripts/oceandeep'

Plug 'yggdroot/indentline'      " Show the line identation
Plug 'vim-airline/vim-airline'  " Statusbar
Plug 'vim-airline/vim-airline-themes'

Plug 'neomake/neomake'          " Linter
Plug 'Valloric/YouCompleteMe'   " Autocompletion

Plug 'sheerun/vim-polyglot'     " Big language pack
Plug 'lervag/vimtex'            " Latex pack
Plug 'matze/vim-tex-fold'       " Automatic Latex folding

Plug 'embear/vim-localvimrc'    " Allows for the usage of local configurations
call plug#end()        
filetype plugin indent on 

