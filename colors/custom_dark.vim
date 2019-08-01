hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='custom_dark'

set background=dark

" colors ----------------------------------------------------------------------

hi Cursor         guibg=#c8c8c8 guifg=NONE    gui=NONE
hi Normal         guibg=#3a3a3a guifg=#dadada gui=NONE
hi Title          guibg=NONE    guifg=#dadada gui=BOLDUNDERLINE
hi Comment        guibg=NONE    guifg=#808080 gui=ITALIC
hi SpecialComment guibg=NONE    guifg=BROWN   gui=ITALIC
hi Todo           guibg=NONE    guifg=BROWN   gui=UNDERLINE
hi Directory      guibg=NONE    guifg=#d78787 gui=NONE
hi LineNR         guibg=NONE    guifg=#808080 gui=NONE
hi CursorLineNr   guibg=NONE    guifg=#dadada gui=NONE
hi ColorColumn    guibg=NONE    guifg=NONE    gui=NONE
hi SignColumn     guibg=NONE    guifg=NONE    gui=NONE
hi Underlined     guibg=NONE    guifg=NONE    gui=UNDERLINE
hi Visual         guibg=#005f5f guifg=NONE    gui=NONE
hi VisualNOS      guibg=NONE    guifg=NONE    gui=UNDERLINE
hi MatchParen     guibg=NONE    guifg=#ffffff gui=BOLD
hi IncSearch      guibg=#005f5f guifg=NONE    gui=NONE
hi Search         guibg=#005f5f guifg=NONE    gui=NONE
hi CursorColumn   guibg=NONE    guifg=NONE    gui=NONE
hi CursorLine     guibg=#474747 guifg=NONE    gui=NONE
hi VertSplit      guibg=NONE    guifg=#dadada gui=BOLD
hi WildMenu       guibg=NONE    guifg=#dadada gui=BOLDUNDERLINE
hi DiffAdd        guibg=#88c563 guifg=#3a3a3a gui=NONE
hi DiffDelete     guibg=#e76d6d guifg=#3a3a3a gui=NONE
hi DiffChange     guibg=#3a3a3a guifg=#ecb534 gui=UNDERLINE
hi DiffText       guibg=#ecb534 guifg=#3a3a3a gui=NONE
hi Pmenu          guibg=#474747 guifg=#dadada gui=NONE
hi PmenuSel       guibg=#474747 guifg=#d78787 gui=BOLD
hi PmenuSbar      guibg=#dadada guifg=#073642 gui=NONE
hi PmenuThumb     guibg=#d78787 guifg=#dadada gui=NONE
hi SpellBad       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellCap       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellLocal     guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi SpellRare      guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi ErrorMsg       guibg=NONE    guifg=#dc322f gui=NONE
hi WarningMsg     guibg=NONE    guifg=#e76d6d gui=NONE
hi MoreMsg        guibg=NONE    guifg=#d78787 gui=NONE
hi Question       guibg=NONE    guifg=#d78787 gui=NONE
hi Error          guibg=NONE    guifg=#e76d6d gui=REVERSE
hi Ignore         guibg=NONE    guifg=NONE    gui=NONE
hi EndOfBuffer    guibg=NONE    guifg=#3a3a3a gui=NONE
hi NonText        guibg=NONE    guifg=#d78787 gui=NONE
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

hi Constant guifg=#d78787

" Terminal --------------------------------------------------------------------
if has('nvim')
    let g:terminal_color_0  = 'NONE'
    let g:terminal_color_1  = '#dc322f'
    let g:terminal_color_2  = '#859900'
    let g:terminal_color_3  = '#b58900'
    let g:terminal_color_4  = '#d78787'
    let g:terminal_color_5  = '#d33682'
    let g:terminal_color_6  = '#2aa198'
    let g:terminal_color_7  = '#073642'
    let g:terminal_color_8  = '#3a3a3a'
    let g:terminal_color_9  = '#cb4b16'
    let g:terminal_color_10 = '#808080'
    let g:terminal_color_11 = '#839496'
    let g:terminal_color_12 = '#dadada'
    let g:terminal_color_13 = '#6c71c4'
    let g:terminal_color_14 = '#586e75'
    let g:terminal_color_15 = '#002b36'
endif
hi TermCursor guibg=#c8c8c8 guifg=NONE gui=NONE

" coc.nvim --------------------------------------------------------------------
hi CocErrorSign   guibg=NONE guifg=#ff0000
hi CocWarningSign guibg=NONE guifg=#ff922b
hi CocInfoSign    guibg=NONE guifg=#fab005
hi CocHintSign    guibg=NONE guifg=#15aabf

" Tabline ---------------------------------------------------------------------
let currentDirectory = systemlist('dirs')[0]

hi cocStatusColor  guibg=NONE guifg=#d78787
hi backgroundColor guibg=NONE guifg=#808080

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

" Rust ------------------------------------------------------------------------
hi rustCommentLineDoc guibg=#808080 guifg=#005f5f gui=ITALIC
