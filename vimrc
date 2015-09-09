set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive' "Plugin for git
Plugin 'scrooloose/nerdtree' " File directory tree plugin
Plugin 'tpope/vim-surround' " CRUD of surrounding pairs makes easy
Plugin 'bling/vim-airline' " Lean and mean status/tabline for vim
Plugin 'scrooloose/nerdcommenter' " For commenting
Plugin 'easymotion/vim-easymotion' " For easy movement 
Plugin 'Raimondi/delimitMate' " for auto closing of quotes, braces, etc
Plugin 'mattn/emmet-vim' " for emmet
Plugin 'MarcWeber/vim-addon-mw-utils' " pluginns for snipmate
Plugin 'tomtom/tlib_vim' " pluginns for snipmate
Plugin 'garbas/vim-snipmate' " pluginns for snipmate
Plugin 'honza/vim-snippets' " pluginns for snipmate
Plugin 'Yggdroot/indentLine' " for indentation guide
Plugin 'majutsushi/tagbar' " for summary of code
Plugin 'ap/vim-css-color' " show colors in css
Plugin 'terryma/vim-multiple-cursors' " for multi selection
Plugin 'luochen1990/rainbow' " for parentheses colors
Plugin 'HTML-AutoCloseTag' " Auto close tag for html
Plugin 'othree/html5.vim' " for html5
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets' " snippets for neocomplete
"Plugin 'nvie/vim-flake8' " pyython stnax checker
Plugin 'hail2u/vim-css3-syntax' " for css
"Plugin 'andviro/flake8-vim' " for python syntax checker 
"Plugin 'Valloric/YouCompleteMe' " auto completion
Plugin 'ctrlpvim/ctrlp.vim' " buffer
Plugin 'FelikZ/ctrlp-py-matcher' " ctrlp fast matcher base on python
"Plugin 'altercation/vim-colors-solarized' " Vim colorscheme
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
set timeout timeoutlen=1500

" set standard encoding 
set encoding=utf8

" use unix as the standard file type
set ffs=unix,dos,mac


" open new split panes to right and bottom which feels more natural than vim's
" default
set splitbelow
set splitright

" >> VIM USER INTEFACE

" visual autocomplete for command menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc

" highlight current line
set cursorline

" search as characters are entered
set incsearch

" highlight search results
set hlsearch

" show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" >> PLUGINS 
" mappings of keys
" for tagbar
nmap <F8> :TagbarToggle<CR>

" open/close nerdtree in normal mode
nmap <F3> :NERDTreeToggle<CR>

" For navigating split navigations or etc
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" auto check file for errors on write
"autocmd BufWritePost *.py call Flake8()
"let g:PyFlakeOnWrite=1
"" List of checker used
"let g:PyFlakeCheckers='pep8,mccabe,frosted'
"
"let g:PyFlakeDisabledMessages='E127'
"let g:PyFlakeDisabledMessages='E128'
"let g:PyFlakeDisabledMessages='E501'
"let g:PyFlakeDisabledMessages='E502'
" start multi cursor mode
"let g:muilti_cursor_start_key='<C-o>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"Rainbow parentheses
let g:rainbow_active=1

"airline 
let g:airline#extension#tabline#enabled=1

" indent guides
let g:indentLine_char = '|'
let g:indentLine_enabled=1

" For vim airline to appear
set laststatus=2

" >> OTHER
" Add left side numbes ( line number )
set number
" vim tabs spaces = 4
" size of a hard tabstop
set tabstop=4
"  size of an indent
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
" make tab insert indents instead of tabs at the beginning of a line
set smarttab
"  always uses spaces instead of tab characters
set expandtab

"Auto indent
set ai
"Smart indent
set si
" wrap lines
set wrap


" Enable colorscheme
set background=dark
syntax on
colorscheme monokai " colorscheme is monokai. nice!
"let g:solarized_termcolors=256 " use 256 color
