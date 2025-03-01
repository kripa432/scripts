set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua require('Comment').setup()
xnoremap <leader>rca <Cmd>lua vim.lsp.buf.range_code_action()<CR>

source ~/.config/nvim/lsp.lua
