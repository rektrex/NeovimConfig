let mapleader="\<SPACE>"

set showmatch           "Show matching brackets
set number              "Show line numbers
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
set ignorecase          "Ignorecase while searching
set smartcase           "Ignorecase while searching unless the query has capital letters
set incsearch           "Incremental search

"Use Ctrl+L to clear the highlighting of hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

"Search and replace
nmap <Leader>h :%s//g<Left><Left>

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
vnoremap d "_d

nnoremap <leader>d "+d
nnoremap <leader>D "+D
vnoremap <leader>d "+d

"Autocomplete settings
set completeopt-=preview
inoremap <expr> <CR> pumvisible() ? '<C-e><CR>' : '<CR>' 

"Show next 3 lines while scrolling
if !&scrolloff
    set scrolloff=3
endif

"Show next 5 lines while side scrolling
if !&sidescrolloff
    set sidescrolloff=5
endif

"Tap jj to escape to normal mode
inoremap jj <Esc>`^

"UI
set showmatch
set lazyredraw
if has('nvim') || has('termguicolors')
    set termguicolors
endif
colorscheme challenger_deep

"save session
nnoremap <leader>s :mksession<CR>

"save as sudo
cnoremap wsu w !env SUDO_ASKPASS=/bin/gnome-ssh-askpass sudo tee > /dev/null %

"Don't continue comments in new line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
