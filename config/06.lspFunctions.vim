lua << EOF
    local nvim_lsp = require 'nvim_lsp'
    local util = require 'nvim_lsp.util'
    local skeleton = require 'nvim_lsp/skeleton'
    local lsp = vim.lsp

    skeleton.ghcide = {
      default_config = {
        cmd = {"ghcide", "--lsp"};
        filetypes = {"haskell"};
        root_dir = util.root_pattern("stack.yaml", "package.yaml", ".git");
        log_level = lsp.protocol.MessageType.Warning;
        settings = {};
      };
    };

    nvim_lsp.pyls.setup({})
    nvim_lsp.rls.setup({})
    nvim_lsp.ghcide.setup({})

    function line_diagnostics()
        require 'vim.lsp.util'.show_line_diagnostics()
    end
EOF

nnoremap <silent>K :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>e :lua line_diagnostics()<CR>
nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR>
inoremap <silent><C-s> <Space><Esc>:lua vim.lsp.buf.signature_help()<CR>i

"omnifunc
set omnifunc=syntaxcomplete#Complete
autocmd Filetype python,haskell,rust setl omnifunc=v:lua.vim.lsp.omnifunc
