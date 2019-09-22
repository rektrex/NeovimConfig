"Plugins
call plug#begin()

Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
