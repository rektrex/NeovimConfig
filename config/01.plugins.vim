"Plugins
call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml', 'javascript.jsx'] }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
