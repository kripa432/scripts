set nocompatible 
set tabstop=4 shiftwidth=4 softtabstop=4 shiftround noexpandtab 
set autoindent cindent cinoptions=:0
set backspace=indent,eol,start
set number ruler wrap 
set autoread showcmd wildmenu fdm=marker nobackup clipboard=unnamed 
set incsearch hlsearch
set pastetoggle=<F2>
syntax on
filetype on
filetype plugin indent on
autocmd BufEnter *.html set filetype=html
autocmd BufEnter *.md set filetype=markdown
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType markdown setlocal expandtab
map <F7> mzgg=G`z
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
set background=dark
set t_Co=256
