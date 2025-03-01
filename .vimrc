call plug#begin('~/.vim/plugged')

	" Autocompletion
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	"Plug 'clangd/coc-clangd'
    Plug 'neovim/nvim-lspconfig'

    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " Snippets form lsp
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
	
	" Plug 'jiangmiao/auto-pairs'
	" Plug 'tpope/vim-commentary'

    Plug 'numToStr/Comment.nvim'
	" latex plugins
	Plug 'lervag/vimtex'
	Plug 'peterbjorgensen/sved'


	" Color scheme
	Plug 'morhetz/gruvbox'
	Plug 'joshdick/onedark.vim'

    " autocompletion

call plug#end()

set background=dark
colorscheme gruvbox
" hi CocErrorHighlight cterm=underline

" Conquer of completion
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gr <Plug>(coc-references)
" nmap <silent> ge <Plug>(coc-diagnostic-next-error)

" nmap <silent> gn  :call CocAction('diagnosticNext')<CR>
" nmap <silent> gp  :call CocAction('diagnosticPrevious')<CR>

" nmap <leader>rn <Plug>(coc-rename)

" nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" command Format <plug>(coc-format)


" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s)
"   autocmd FileType typescript,json,dart setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" " Remap keys for apply code actions affect whole buffer
" nmap <leader>as  <Plug>(coc-codeaction-source)
" " Apply the most preferred quickfix action to fix diagnostic on the current line
" nmap <leader>qf  <Plug>(coc-fix-current)

" nremap <silent> <leader>re <Plug>(coc-codeaction-refactor)
" xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
" nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" nmap <silent> <leader>cl  <Plug>(coc-codelens-action)

" Add `:Format` command to format current buffer
" command! -nargs=0 Format :call CocActionAsync('format')
"
" " Add `:Fold` command to fold current buffer
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" " Add `:OR` command for organize imports of the current buffer
" command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <c-space> to trigger completion
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif


syntax enable
filetype plugin indent on

set t_Co=256
"set term=xterm-256color


" tabstop: Number of spaces that a <Tab> in the file counts for.
" shiftwidth: Number of spaces to use for each stop of (auto)indent.
" softtabstop: Number spaces that a <Tab> count for while performing editing
" such as inserting <Tab> or using <BS>


"If the 'autoindent' option is on, Vim uses the indent of the first line for
"the following lines.
set autoindent

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
set backspace=indent,eol,start
set cinoptions=:0

set clipboard=unnamedplus
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
" nnoremap <Left> :echo "use h"<CR>
" vnoremap <Left> :<C-u>echo "use h"<CR>
" inoremap <Left> <C-o>:echo "use h"<CR>

" nnoremap <Right> :echo "use l"<CR>
" vnoremap <Right> :<C-u>echo "use l"<CR>
" inoremap <Right> <C-o>:echo "use l"<CR>

" nnoremap <Down> :echo "use j"<CR>
" vnoremap <Down> :<C-u>echo "use j"<CR>
" inoremap <Down> <C-o>:echo "use j"<CR>

" nnoremap <Up> :echo "use k"<CR>
" vnoremap <Up> :<C-u>echo "use k"<CR>
" inoremap <Up> <C-o>:echo "use k"<CR>

"highlight BadWhitespace ctermbg=red guibg=red

augroup filetypedetect
	au! BufRead,BufNewFile *.tex		setfiletype tex
	au! BufRead            *.md         setfiletype markdown
	au! BufRead            *.dart         setfiletype dart
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

au Filetype dart 
			\ setlocal textwidth=120 |
			\ setlocal tabstop=2 |
			\ setlocal shiftwidth=2 |
			\ setlocal softtabstop=2 

let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
      \]
au Filetype js 
			\ setlocal tabstop = 8|
			\ setlocal shiftwidth = 8

let g:vimtex_doc_handlers = ['vimtex#doc#handlers#texdoc']

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" zathura config
" let g:vimtex_view_general_viewer = 'zathura'
" let g:vimtex_view_method = 'zathura_simple'
let g:vimtex_view_general_viewer = 'evince'
nmap <F4> :call SVED_Sync()<CR>

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

" augroup vimtex_event_focus
"   au!
"   au User VimtexEventView call s:TexFocusVim()
" augroup END

au BufReadPost,BufNewFile *.nim,*.dart,*.md set expandtab
" au BufReadPost,BufNewFile *.nim,*.dart,*.md set tabstop=4
