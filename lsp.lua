require'cmp'.setup {
    sources = {
        { name = 'nvim_lsp' }
    },
}

local cmp = require'cmp'

cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'snippy' }, -- For snippy users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
    }, {
        { name = 'buffer' },
    })
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.sqls.setup{
    capabilities = capabilities,
}

require'lspconfig'.gopls.setup{
    capabilities = capabilities,
}
require'lspconfig'.pyright.setup{
    capabilities = capabilities,
}
require'lspconfig'.ts_ls.setup{
    capabilities = capabilities,
}
require'lspconfig'.dartls.setup{
    capabilities = capabilities,
    settings = {
        dart = {
            enableSdkFormatter = true,
        }
    }
}


-- Conquer of completion
-- nmap <silent> gd <Plug>(coc-definition)
-- nmap <silent> gi <Plug>(coc-implementation)
-- nmap <silent> gy <Plug>(coc-type-definition)
-- nmap <silent> gr <Plug>(coc-references)
-- nmap <silent> ge <Plug>(coc-diagnostic-next-error)

-- nmap <silent> gn  :call CocAction('diagnosticNext')<CR>
-- nmap <silent> gp  :call CocAction('diagnosticPrevious')<CR>

-- nmap <leader>rn <Plug>(coc-rename)

-- nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

-- xmap <leader>f  <Plug>(coc-format-selected)
-- nmap <leader>f  <Plug>(coc-format-selected)

-- command Format <plug>(coc-format)

vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to Declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "LSP Hover" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to Implementation" })
-- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename Symbol" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Symbol References" })
vim.keymap.set("n", "gn", vim.diagnostic.goto_next, { buffer = bufnr, desc = "Go to Next Diagnostic" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code Action" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = bufnr, desc = "Signature Help" })
vim.keymap.set("n", "<leader>h", vim.lsp.buf.signature_help, { buffer = bufnr, desc = "Signature Help" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename Symbol" })
vim.keymap.set("v", "<leader>f", vim.lsp.buf.format, { buffer = bufnr, desc = "Format buffer" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { buffer = bufnr, desc = "Format buffer" })

-- vim.lsp.set_log_level("debug")
