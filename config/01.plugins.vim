"Plugins
call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'chrisbra/unicode.vim'
Plug 'tpope/vim-repeat'
Plug 'huytd/vim-quickrun'
Plug 'tpope/vim-dispatch'
Plug 'miyakogi/conoline.vim'
Plug 'gabrielelana/vim-markdown'

Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }

call plug#end()
