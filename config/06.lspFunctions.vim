lua << EOF
    local nvim_lsp = require 'nvim_lsp'
    local util = require 'vim.lsp.util'

    nvim_lsp.pyls.setup({})
    nvim_lsp.rls.setup({})
    nvim_lsp.ghcide.setup({})

    function line_diagnostics()
        util.show_line_diagnostics()
    end
EOF

nnoremap <silent>K :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>e :lua line_diagnostics()<CR>
nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR>
inoremap <silent><C-s> <Space><Esc>:lua vim.lsp.buf.signature_help()<CR>i

"omnifunc
set omnifunc=syntaxcomplete#Complete
autocmd Filetype python,haskell,rust setl omnifunc=v:lua.vim.lsp.omnifunc
