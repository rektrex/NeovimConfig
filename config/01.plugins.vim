"Plugins
call plug#begin()

Plug 'alvan/vim-closetag', { 'for': ['html', 'xml', 'javascript.jsx'] }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
