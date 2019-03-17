let mapleader="\<Space>"

set showmatch           "Show matching brackets
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
set inccommand=nosplit
set foldmethod=syntax
set nofoldenable        "Disable folding
set laststatus=0        "Remove statusline
set hidden              "if hidden not set, TextEdit might fail
set cmdheight=1
set noshowmode
set noruler

"copied from coc.nvim
set updatetime=300
set shortmess+=c
set signcolumn=yes

"Use `[c` and`]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

"Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gt <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"Use Ctrl+L to clear the highlighting of hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

"Search and replace
nnoremap <Leader>h :%s//g<Left><Left>
vnoremap <Leader>h :s//g<Left><Left>

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

colorscheme custom

"save session
nnoremap <leader>s :mksession<CR>

"Don't continue comments in new line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

"Colours for Tabline
hi cocStatusColor guibg=#be5046 guifg=#191919
hi fileNameColor guibg=#56b6c2 guifg=#191919

"Change fileNameColor based based on insert/normal mode
au InsertEnter * hi fileNameColor guibg=#98c379
au InsertLeave * hi fileNameColor guibg=#56b6c2

let currentDirectory = systemlist('dirs')[0]

"Tabline
set tabline=
set tabline+=%#fileNameColor#
set tabline+=\ %t
set tabline+=%r
set tabline+=%m\ 
set tabline+=%#cocStatusColor#\ 
set tabline+=%{coc#status()}
set tabline+=%#LineNr#
set tabline+=%=
set tabline+=%#Comment#
set tabline+=%{currentDirectory}\ 
set showtabline=2

set nu
set rnu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained * set rnu
    autocmd BufLeave,FocusLost * set nornu
augroup END

"persistent undo
set undodir=~/.local/share/nvim/undodir
set undofile

"set .pl to prolog
au BufRead,BufNewFile *.pl set filetype=Prolog
