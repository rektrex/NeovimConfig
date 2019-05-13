"Plugins
call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml', 'javascript.jsx'] }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'tpope/vim-repeat'
Plug 'miyakogi/conoline.vim'
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }

call plug#end()
