lua << EOF
    local util = require 'vim.lsp.util'

    function line_diagnostics()
        util.show_line_diagnostics()
    end
EOF

nnoremap <silent>K :call lsp#text_document_hover()<CR>
nnoremap <silent> <leader>e :lua line_diagnostics()<CR>
nnoremap <silent>gd :call lsp#text_document_definition()<CR>
