set nocp ts=8 sw=8 noet ai cin bs=2 cb=unnamed
set number ruler wrap autoread showcmd showmode fdm=marker nobackup
set wildmenu
syntax on
filetype on
set incsearch
set hlsearch
set cindent
set cino=:0
set nocompatible
set backspace=indent,eol,start
set autoindent
filetype plugin indent on
autocmd FileType text setlocal
set pastetoggle=<F2>
map <F7> mzgg=G`z
map <F8> :w <CR> :!gcc % && ./a.out <CR>
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
abbr #b /************************************************
abbr #e ************************************************/
cs add $CSCOPE_DB
set background=dark
set t_Co=256
