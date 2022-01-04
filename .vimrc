
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible 
set tabstop=4 shiftwidth=4 softtabstop=4 shiftround noexpandtab 
set autoindent cindent cinoptions=:0
set backspace=indent,eol,start
set number ruler wrap 
set autoread showcmd wildmenu fdm=marker nobackup clipboard=unnamed 
set incsearch hlsearch
set pastetoggle=<F2>
syntax on
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
