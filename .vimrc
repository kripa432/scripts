call plug#begin('~/.vim/plugged')

	" Autocompletion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'dense-analysis/ale'
	Plug 'clangd/coc-clangd'
	
	" Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-commentary'
	Plug 'lervag/vimtex'

	" Color scheme
	Plug 'morhetz/gruvbox'
	Plug 'joshdick/onedark.vim'

call plug#end()

set background=dark
" colorscheme gruvbox
hi CocErrorHighlight cterm=underline

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


" tabstop: Number of spaces that a <Tab> in the file counts for.
" shiftwidth: Number of spaces to use for each stop of (auto)indent.
" softtabstop: Number spaces that a <Tab> count for while performing editing
" such as inserting <Tab> or using <BS>


"If the 'autoindent' option is on, Vim uses the indent of the first line for
"the following lines.
set autoindent

set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab 
set backspace=indent,eol,start
set cinoptions=:0

" set clipboard=unnamedplus
" xnoremap "+y y:call system("wl-copy", @")<cr>
" nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
" nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p


set number ruler wrap autoread showcmd showmode foldmethod=marker nobackup wildmenu
set wildmode=longest,list

set incsearch hlsearch ignorecase

set relativenumber

set pastetoggle=<F2>

set modeline

" restore lineno on exiting and opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


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

augroup filetypedetect
	au! BufRead,BufNewFile *.tex		setfiletype tex
	au! BufRead            *.md         setfiletype markdown
augroup END


au Filetype tex
	\ setlocal expandtab |
    \ setlocal textwidth=72 |
	\ setlocal shiftwidth=2 |
	\ setlocal tabstop=2 |
	\ setlocal softtabstop=0 |
	\ setlocal fo+=l |
    \ setlocal spell spelllang=en_gb

au Filetype markdown
    \ setlocal textwidth=72 |
	\ setlocal formatoptions+=twnl |
    \ setlocal spell spelllang=en_gb

let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
      \]

" if empty(v:servername) && exists('*remote_startserver')
"   call remote_startserver('VIM')
" endif

if !exists("g:vim_window_id")
  let g:vim_window_id = system("xdotool getactivewindow")
endif

" function! s:TexFocusVim() abort
"   " Give window manager time to recognize focus moved to Zathura;
"   " tweak the 200m as needed for your hardware and window manager.
"   sleep 200m

"   " Refocus Vim and redraw the screen
"   silent execute "!xdotool windowfocus " . expand(g:vim_window_id)
"   redraw!
" endfunction


augroup vimtex_event_focus
  au!
  au User VimtexEventView call s:TexFocusVim()
augroup END

" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

let g:vimtex_doc_handlers = ['vimtex#doc#handlers#texdoc']
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'

let g:vimtex_quickfix_open_on_warning = 0

