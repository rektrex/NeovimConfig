"leader key
let mapleader="\<Space>"

"UI ------------------

set textwidth=0         "Prevent hard-wrap text
set wrapmargin=0
set wrap
set linebreak           "Break (visually) by word instead of character

set visualbell          "Removes audiobell and sets visualbell
set t_vb=               "Empty visualbell

set nojoinspaces        "Prevents inserting two spaces after punctuation on a join

set pumheight=5         "Show only 5 suggestions

set splitbelow          "Horizontal split below current
set splitright          "Vertical split to the right of current

set hlsearch            "Highlight search result
set incsearch           "Incremental search
set ignorecase
set smartcase
set inccommand=nosplit

set nofoldenable        "Disable folding

set hidden              "if hidden not set, TextEdit might fail

set cmdheight=1

set noshowmode

set noruler

set cursorline

set noshowmatch "don't jump to matching pair

set lazyredraw

if has('nvim') || has('termguicolors')
    set termguicolors
    colorscheme truelove
endif

set guicursor=

set updatetime=300 "for coc.nvim

set shortmess+=acW "remove/modify some messages

set signcolumn=no "don't display sign column

"Show next 3 lines while scrolling
if !&scrolloff
    set scrolloff=3
endif

"Show next 5 lines while side scrolling
if !&sidescrolloff
    set sidescrolloff=5
endif

"Use Ctrl+L to clear the highlighting of hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

"Other ---------------

"Search and replace
nnoremap <leader>h :%s//g<Left><Left>
vnoremap <leader>h :s//g<Left><Left>

"Indentation rules and use spaces
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set smartindent
filetype plugin indent on
syntax on

set undolevels=1000

set backspace=indent,eol,start

set clipboard+=unnamedplus "Enable xsel clipboard

"sets d => "delete"
"leader+d => "cut"
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
xnoremap d "_d
nnoremap <leader>d "+d
nnoremap <leader>D "+D
xnoremap <leader>d "+d
nnoremap <leader>x "+x
nnoremap <leader>X "+X

"Autocomplete settings
set completeopt+=menuone "show completion menu even when there is only one match
set completeopt+=noinsert
set completeopt-=preview

"Tap jk to escape to normal mode
inoremap jk <Esc>`^

"save session
nnoremap <leader>s :mksession<CR>

"persistent undo
set undodir=~/.local/share/nvim/undodir
set undofile

nnoremap <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>

set path+=** "use recursive search from cwd for all file commands like :find

"json comments syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

call lsp#add_filetype_config({
    \ 'filetype': 'rust',
    \ 'name': 'ra_lsp_server',
    \ 'cmd': 'ra_lsp_server',
    \ })

call lsp#add_filetype_config({
    \ 'filetype': 'haskell',
    \ 'name': 'hie',
    \ 'cmd': 'hie',
    \ })

call lsp#add_filetype_config({
    \ 'filetype': 'python',
    \ 'name': 'pyls',
    \ 'cmd': 'pyls',
    \ 'enable': v:true,
    \ 'plugins': {
    \   'jedi_hover': { 'enabled': v:true, },
    \ },
    \ })
