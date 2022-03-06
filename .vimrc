call plug#begin('~/.vim/plugged')

	" Autocompletion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

	" Color scheme
	Plug 'morhetz/gruvbox'
	"Plug 'joshdick/onedark.vim'

call plug#end()

" Conquer of completion
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn  :call CocAction('diagnosticNext')<CR>
nmap <silent> gp  :call CocAction('diagnosticPrevious')<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Ctrl-Space to trigger autocompletion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Maker <cr> to select first completion 
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

syntax enable
filetype plugin indent on

set t_Co=256
set term=xterm-256color

set background=dark
colorscheme gruvbox

set tabstop=4 shiftwidth=4 noexpandtab autoindent cindent
set backspace=indent,eol,start
set cinoptions=:0

set clipboard=unnamed

set number ruler wrap autoread showcmd showmode foldmethod=marker nobackup wildmenu

set incsearch hlsearch ignorecase

set relativenumber

set pastetoggle=<F2>

" restore lineno on exiting and opening a file
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

" Disable left, righ, up, and down keys
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

"highlight BadWhitespace ctermbg=red guibg=red
