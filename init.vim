"Plugins
call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'unblevable/quick-scope'
Plug 'coderifous/textobj-word-column.vim'
Plug 'wellle/targets.vim'
Plug 'neovim/nvim-lsp'
Plug 'neovimhaskell/haskell-vim'
Plug 'romainl/vim-cool'
Plug 'junegunn/vim-easy-align'
Plug 'andreypopp/vim-colors-plain'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'

call plug#end()

"Vim commentary
autocmd FileType xdefaults setlocal commentstring=!\ %s

"netrw
let g:netrw_dirhistmax = 0

"deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
    \ 'camel_case': v:true,
    \ })

"quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"targets.vim
autocmd User targets#mappings#user call targets#mappings#extend({
    \ 'b': {'pair': [{'o':'(', 'c':')'}, {'o':'[', 'c':']'}, {'o':'{', 'c':'}'}, {'o':'<', 'c':'>'}]},
    \ })

"haskell-vim
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2

"vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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

set laststatus=2
set statusline=
set statusline+=\ %t
set statusline+=%m\ 
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %l,%c\ 

set cursorline

set noshowmatch "don't jump to matching pair

set lazyredraw

"colorscheme
set termguicolors
augroup colorscheme
    hi Statusline gui=UNDERLINE
    autocmd! Colorscheme * highlight Statusline guibg=NONE
augroup end
set background=dark
colorscheme plain

" don't fill EoB with '~'
let &fcs='eob: '

set guicursor=

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
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"Other ---------------

"Search and replace
nnoremap <leader>h :%s//g<Left><Left>
xnoremap <leader>h :s//g<Left><Left>

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
set completeopt+=noselect
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
nnoremap <silent> <leader>Q :q!<CR>

"json comments syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

"set title of the window
autocmd BufEnter * let &titlestring = ' ' . expand(@%)
set title

"use ripgrep for grep
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

"automatically show quickfix list after grep
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
    autocmd FileType qf nnoremap <silent> <buffer> <CR> <CR>:cclose<CR>
augroup END

"mapping to do a silent grep
nnoremap <leader>g :silent grep!<Space>

"make :cnext and :cprev loop
command! Cnext try | cnext | catch | cfirst | catch | endtry
command! Cprev try | cprev | catch | clast | catch | endtry

nnoremap <C-f> :QFilter<Space>
nnoremap <C-h> :silent colder<CR>

"wisdom from romainl's answer here: https://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins

"list all buffers, and wait for input to switch to a buffer
nnoremap gb :ls<CR>:b<Space>

"find files recursively, under the cwd(todo, follow gitignore)
set path=.,**
nnoremap <leader>f :find<Space>
nnoremap <leader>v :vert sfind<Space>

"prune wildmenu completions
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*/target/**/*
set wildignore+=target/
set wildignore+=*.tar.*

"ignore case when searching in wildmenu
set wildignorecase

"end of romainl's wisdom

"move up and down based on display lines
nnoremap <silent> j gj
nnoremap <silent> k gk

"move to prev and next buffers, similar to tabs in qutebrowser
nnoremap <silent> <C-j> :bnext<CR>
nnoremap <silent> <C-k> :bprev<CR>

"move to prev and next items in the quickfix list
nnoremap <silent> <C-n> :Cnext<CR>
nnoremap <silent> <C-p> :Cprev<CR>

"shortcut to open quickfix list
nnoremap <silent> gq :cw<CR>

"minimal auto pairing
set matchpairs+=<:>

inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap {<Space> {<Space><Space>}<Left><Left>
inoremap [<Space> [<Space><Space>]<Left><Left>
inoremap {; {<Space><Space>};<Left><Left><Left>
inoremap [; [<Space><Space>];<Left><Left><Left>
inoremap (; ();<Left><Left>

nnoremap <silent> <leader>S : call SynGroup()<CR>

set tildeop

"LSP
lua << EOF
    local nvim_lsp = require 'nvim_lsp'
    local util = require 'vim.lsp.util'

    nvim_lsp.pyls.setup({})
    nvim_lsp.rust_analyzer.setup({})
    nvim_lsp.ghcide.setup({})

    function line_diagnostics()
        util.show_line_diagnostics()
    end
EOF

nnoremap <silent>K :ShowDocumentation<CR>
nnoremap <silent> <leader>e :lua line_diagnostics()<CR>
nnoremap <silent>gd :lua vim.lsp.buf.definition()<CR>
inoremap <silent><C-s> <Space><Esc>:lua vim.lsp.buf.signature_help()<CR>i

"Terminal mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
