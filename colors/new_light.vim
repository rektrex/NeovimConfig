hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='new_light'

set background=light

" colors ----------------------------------------------------------------------

hi Cursor         guibg=#c8c8c8 guifg=NONE    gui=NONE
hi Normal         guibg=#fafafa guifg=#657b83 gui=NONE
hi Title          guibg=NONE    guifg=#657b83 gui=BOLDUNDERLINE
hi Comment        guibg=NONE    guifg=#93a1a1 gui=ITALIC
hi SpecialComment guibg=NONE    guifg=BROWN   gui=ITALIC
hi Todo           guibg=NONE    guifg=BROWN   gui=UNDERLINE
hi Directory      guibg=NONE    guifg=#dfc56d gui=NONE
hi LineNR         guibg=NONE    guifg=#93a1a1 gui=NONE
hi CursorLineNr   guibg=NONE    guifg=BROWN   gui=NONE
hi ColorColumn    guibg=NONE    guifg=NONE    gui=NONE
hi SignColumn     guibg=NONE    guifg=NONE    gui=NONE
hi Underlined     guibg=NONE    guifg=NONE    gui=UNDERLINE
hi Visual         guibg=#fafafa guifg=#93a1a1 gui=REVERSE
hi VisualNOS      guibg=NONE    guifg=NONE    gui=UNDERLINE
hi MatchParen     guibg=NONE    guifg=#000000 gui=BOLD
hi IncSearch      guibg=#dfc56d guifg=NONE    gui=BOLD
hi Search         guibg=#dfc56d guifg=NONE    gui=BOLD
hi CursorColumn   guibg=NONE    guifg=NONE    gui=NONE
hi CursorLine     guibg=#efefef guifg=NONE    gui=NONE
hi VertSplit      guibg=NONE    guifg=#657b83 gui=BOLD
hi WildMenu       guibg=NONE    guifg=#073642 gui=BOLDUNDERLINE
hi DiffAdd        guibg=#88c563 guifg=#fafafa gui=NONE
hi DiffDelete     guibg=#e76d6d guifg=#fafafa gui=NONE
hi DiffChange     guibg=#fafafa guifg=#ecb534 gui=UNDERLINE
hi DiffText       guibg=#ecb534 guifg=#fafafa gui=NONE
hi Pmenu          guibg=#efefef guifg=#657b83 gui=NONE
hi PmenuSel       guibg=#efefef guifg=#008ec4 gui=BOLD
hi PmenuSbar      guibg=#657b83 guifg=#073642 gui=NONE
hi PmenuThumb     guibg=#008ec4 guifg=#657b83 gui=NONE
hi SpellBad       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellCap       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellLocal     guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi SpellRare      guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi ErrorMsg       guibg=NONE    guifg=#dc322f gui=NONE
hi WarningMsg     guibg=NONE    guifg=#e76d6d gui=NONE
hi MoreMsg        guibg=NONE    guifg=#dc322f gui=NONE
hi Question       guibg=NONE    guifg=#dc322f gui=NONE
hi Error          guibg=NONE    guifg=#dc322f gui=REVERSE
hi Ignore         guibg=NONE    guifg=NONE    gui=NONE
hi EndOfBuffer    guibg=NONE    guifg=#fafafa gui=NONE
hi NonText        guibg=NONE    guifg=#dc322f gui=NONE
hi SpecialKey     guibg=NONE    guifg=#e76d6d gui=UNDERCURL

" Clear & override ------------------------------------------------------------

hi clear Constant
hi clear Statement
hi clear Type
hi clear Function
hi clear PreProc
hi clear Special
hi clear Identifier

hi Constant guifg=#008ec4
hi Tag gui=UNDERLINE

" coc.nvim --------------------------------------------------------------------
hi CocErrorSign   guibg=NONE guifg=#ff0000
hi CocWarningSign guibg=NONE guifg=#ff922b
hi CocInfoSign    guibg=NONE guifg=#fab005
hi CocHintSign    guibg=NONE guifg=#008ec4

" Tabline ---------------------------------------------------------------------
" let currentDirectory = systemlist('dirs')[0]

" hi cocStatusColor guibg=NONE guifg=#dc322f
hi backgroundColor guibg=NONE guifg=#93a1a1

" set tabline=
" set tabline+=%#backgroundColor#
" set tabline+=\ %t
" set tabline+=%r
" set tabline+=%m\ 
" set tabline+=%#cocStatusColor#\ 
" set tabline+=%{coc#status()}
" set tabline+=%#backgroundColor#
" set tabline+=%=
" set tabline+=%{currentDirectory}\ 
" set showtabline=2

set statusline=
set statusline+=%#backgroundColor#
set statusline+=%=
set statusline+=%{coc#status()}\ 
set statusline+=\ %t
set laststatus=2

" Help ------------------------------------------------------------------------
hi helpHyperTextJump gui=UNDERLINE

" Typescript ------------------------------------------------------------------
hi link typescriptParens Delimiter
