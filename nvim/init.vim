"
"	nVimRc by Lukas
"	Last updated: 30-01-2018
"

""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""

" Display line numbers
set number

" Set 10 lines to the cursor - when moving using j/k
set so=10

" Enabled wildmenu - Command line completion help, shows all choices
set wildmenu

" Always show current position
set ruler

" Heigh of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Make search act like search in modern browser (partial matches(
set incsearch

" Dont redraw while executin macros (good performace config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit of extra margin to the left
set foldcolumn=1

""""""""""""""
" Plugins 
""""""""""""""

" Specify directory for pluggins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'vim-python/python-syntax'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

" NERDTree options
autocmd vimenter * NERDTree
let NERDTreeIgnore = ['\.pyc$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""
" Providers
"""""""""""""""

"Python2 and 3
let g:python_host_prog = '/usr/bin/python2'

""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""

" Enable syntax colors
syntax on

try
    colorscheme gruvbox
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_us as the standard language
set encoding=utf8


""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs :D
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""

" Turn backup off, since most stuff is in git anyways.
set nobackup
set nowb
set noswapfile

"""""""""""""
" Bindings 
"""""""""""""

" Smart way to move between windows
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
