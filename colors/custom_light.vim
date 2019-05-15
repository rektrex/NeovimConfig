hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='custom_light'

set background=light

" colors ----------------------------------------------------------------------

hi Cursor         guibg=#657b83 guifg=NONE    gui=NONE
hi Normal         guibg=#f1f1f1 guifg=#657b83 gui=NONE
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
hi Visual         guibg=#f1f1f1 guifg=#93a1a1 gui=REVERSE
hi VisualNOS      guibg=NONE    guifg=NONE    gui=UNDERLINE
hi MatchParen     guibg=NONE    guifg=#000000 gui=BOLD
hi IncSearch      guibg=#dfc56d guifg=NONE    gui=BOLD
hi Search         guibg=#dfc56d guifg=NONE    gui=BOLD
hi CursorColumn   guibg=NONE    guifg=NONE    gui=NONE
hi CursorLine     guibg=#dfdfdf guifg=NONE    gui=NONE
hi VertSplit      guibg=NONE    guifg=#657b83 gui=BOLD
hi WildMenu       guibg=NONE    guifg=#073642 gui=BOLDUNDERLINE
hi DiffAdd        guibg=#88c563 guifg=#f1f1f1 gui=NONE
hi DiffDelete     guibg=#e76d6d guifg=#f1f1f1 gui=NONE
hi DiffChange     guibg=#f1f1f1 guifg=#ecb534 gui=UNDERLINE
hi DiffText       guibg=#ecb534 guifg=#f1f1f1 gui=NONE
hi Pmenu          guibg=NONE    guifg=#657b83 gui=NONE
hi PmenuSel       guibg=#073642 guifg=#93a1a1 gui=BOLD
hi PmenuSbar      guibg=#657b83 guifg=#073642 gui=NONE
hi PmenuThumb     guibg=#f1f1f1 guifg=#657b83 gui=NONE
hi SpellBad       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellCap       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellLocal     guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi SpellRare      guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi ErrorMsg       guibg=NONE    guifg=#dc322f gui=NONE
hi WarningMsg     guibg=NONE    guifg=#e76d6d gui=NONE
hi MoreMsg        guibg=NONE    guifg=#268bd2 gui=NONE
hi Question       guibg=NONE    guifg=#268bd2 gui=NONE
hi Error          guibg=NONE    guifg=#e76d6d gui=REVERSE
hi Ignore         guibg=NONE    guifg=NONE    gui=NONE
hi EndOfBuffer    guibg=NONE    guifg=#f1f1f1 gui=NONE
hi NonText        guibg=NONE    guifg=#cf669f gui=NONE
hi SpecialKey     guibg=NONE    guifg=#e76d6d gui=UNDERCURL

" Clear & override ------------------------------------------------------------

hi clear Number
hi clear Character
hi clear Statement
hi clear Type
hi clear Function
hi clear PreProc
hi clear Special
hi clear Identifier
hi clear Constant
hi clear Boolean
hi clear String
hi clear Delimiter

hi Constant guifg=#cf669f

" Terminal --------------------------------------------------------------------
if has('nvim')
    let g:terminal_color_0  = 'NONE'
    let g:terminal_color_1  = '#dc322f'
    let g:terminal_color_2  = '#859900'
    let g:terminal_color_3  = '#b58900'
    let g:terminal_color_4  = '#268bd2'
    let g:terminal_color_5  = '#d33682'
    let g:terminal_color_6  = '#2aa198'
    let g:terminal_color_7  = '#073642'
    let g:terminal_color_8  = '#f1f1f1'
    let g:terminal_color_9  = '#cb4b16'
    let g:terminal_color_10 = '#93a1a1'
    let g:terminal_color_11 = '#839496'
    let g:terminal_color_12 = '#657b83'
    let g:terminal_color_13 = '#6c71c4'
    let g:terminal_color_14 = '#586e75'
    let g:terminal_color_15 = '#002b36'
endif

" coc.nvim --------------------------------------------------------------------
hi CocErrorSign   guibg=NONE guifg=#ff0000
hi CocWarningSign guibg=NONE guifg=#ff922b
hi CocInfoSign    guibg=NONE guifg=#fab005
hi CocHintSign    guibg=NONE guifg=#15aabf

" Tabline ---------------------------------------------------------------------
let currentDirectory = systemlist('dirs')[0]

hi cocStatusColor guibg=NONE guifg=BROWN
hi backgroundColor guibg=NONE guifg=#93a1a1

set tabline=
set tabline+=%#backgroundColor#
set tabline+=\ %t
set tabline+=%r
set tabline+=%m\ 
set tabline+=%#cocStatusColor#\ 
set tabline+=%{coc#status()}
set tabline+=%#backgroundColor#
set tabline+=%=
set tabline+=%{currentDirectory}\ 
set showtabline=2
