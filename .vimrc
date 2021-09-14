set nocompatible 
filetype off
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:syntastic_mode_map = {
	\ "mode" : "passive",
	\ "active_filetypes": [],
	\ "passive_filetypes": []}

set tabstop=4 shiftwidth=4 noexpandtab autoindent cindent
set backspace=indent,eol,start
set cinoptions=:0

set clipboard=unnamed

set number ruler wrap autoread showcmd showmode fdm=marker nobackup
set wildmenu

syntax on

set incsearch
set hlsearch
set autoindent
set ignorecase

set relativenumber

filetype on
filetype plugin indent on

set background=dark
set t_Co=256
set term=xterm-256color

set pastetoggle=<F2>
map <F7> mzgg=G`z


"map <F8> :w <CR> :!gcc % && ./a.out <CR>
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

command! -nargs=1 Silent
\   execute 'silent !' . <q-args>
\ | execute 'redraw!'

let g:tex_flavor = 'latex'
map <F1> :so ~/.vimrc <CR>

let g:vimtex_compiler_latexmk = {
			\ 'build_dir' : '',
		\ 'callback' : 1,
			\ 'continuous' : 1,
			\ 'executable' : 'latexmk',
			\ 'hooks' : [],
			\ 'options' : [
			\   '-verbose',
			\   '-file-line-error',
			\   '-synctex=1',
			\   '-interaction=nonstopmode',
			\ ],
			\}
let g:vimtex_quickfix_latexlog = {'default' : 0}
let g:tex_fast = "cmMprsSvV"

inoremap ;bf \textbf{}<left>
inoremap ;la \leftarrow

autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufNewFile  *.tex	0r ~/.vim/templates/skeleton.tex

autocmd BufRead,BufNewFile *.pdf set filetype=pdf

autocmd CompleteDone * pclose
"set completeopt-=preview

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


au Filetype python
    \ setlocal autoindent |
	\ setlocal smartindent |
    \ setlocal expandtab |
    \ setlocal tabstop=4 |
    \ setlocal shiftwidth=4 |
    \ setlocal softtabstop=4 |
    \ setlocal textwidth=79 |
    \ setlocal fileformat=unix 


nnoremap <Left> :echo "use h"<CR>
vnoremap <Left> :<C-u>echo "use h"<CR>
inoremap <Left> <C-o>:echo "use h"<CR>

nnoremap <Right> :echo "use l"<CR>
vnoremap <Right> :<C-u>echo "use l"<CR>
inoremap <Right> <C-o>:echo "use l"<CR>

nnoremap <Down> :echo "use j"<CR>
vnoremap <Down> :<C-u>echo "use j"<CR>
inoremap <Down> <C-o>:echo "use j"<CR>

nnoremap <Up> :echo "use k"<CR>
vnoremap <Up> :<C-u>echo "use k"<CR>
inoremap <Up> <C-o>:echo "use k"<CR>

highlight BadWhitespace ctermbg=red guibg=red
