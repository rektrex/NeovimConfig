hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='custom_black'

set background=dark

" colors ----------------------------------------------------------------------

hi Cursor         guibg=#cccccc guifg=NONE    gui=NONE
hi Normal         guibg=#222222 guifg=#cccccc gui=NONE
hi Title          guibg=NONE    guifg=#cccccc gui=BOLDUNDERLINE
hi Comment        guibg=NONE    guifg=#999999 gui=NONE
hi SpecialComment guibg=NONE    guifg=#888884 gui=NONE
hi Todo           guibg=NONE    guifg=#dfc56d gui=UNDERLINE
hi Directory      guibg=NONE    guifg=#dfc56d gui=NONE
hi LineNR         guibg=NONE    guifg=#999999 gui=NONE
hi CursorLineNr   guibg=NONE    guifg=#cccccc gui=NONE
hi ColorColumn    guibg=#222222 guifg=NONE    gui=NONE
hi SignColumn     guibg=#222222 guifg=NONE    gui=NONE
hi Underlined     guibg=NONE    guifg=NONE    gui=UNDERLINE
hi Visual         guibg=NONE    guifg=#545454 gui=REVERSE
hi VisualNOS      guibg=NONE    guifg=NONE    gui=UNDERLINE
hi MatchParen     guibg=NONE    guifg=#424242 gui=NONE
hi IncSearch      guibg=#dfc56d guifg=#222222 gui=NONE
hi Search         guibg=#dfc56d guifg=#222222 gui=NONE
hi CursorColumn   guibg=#303030 guifg=NONE    gui=NONE
hi CursorLine     guibg=#303030 guifg=NONE    gui=NONE
hi VertSplit      guibg=NONE    guifg=#cccccc gui=NONE
hi WildMenu       guibg=#222222 guifg=#cccccc gui=BOLDUNDERLINE
hi DiffAdd        guibg=#88c563 guifg=#222222 gui=NONE
hi DiffDelete     guibg=#e76d6d guifg=#222222 gui=NONE
hi DiffChange     guibg=#222222 guifg=#ecb534 gui=UNDERLINE
hi DiffText       guibg=#ecb534 guifg=#222222 gui=NONE
hi Pmenu          guibg=#cccccc guifg=#303030 gui=NONE
hi PmenuSel       guibg=#303030 guifg=#cccccc gui=BOLD
hi PmenuSbar      guibg=#cccccc guifg=#303030 gui=NONE
hi PmenuThumb     guibg=#303030 guifg=#cccccc gui=NONE
hi SpellBad       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellCap       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellLocal     guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi SpellRare      guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi ErrorMsg       guibg=#e76d6d guifg=#cccccc gui=NONE
hi WarningMsg     guibg=NONE    guifg=#e76d6d gui=NONE
hi MoreMsg        guibg=NONE    guifg=#65baf5 gui=NONE
hi Question       guibg=NONE    guifg=#65baf5 gui=NONE
hi Error          guibg=NONE    guifg=#e76d6d gui=REVERSE
hi Ignore         guibg=NONE    guifg=NONE    gui=NONE
hi EndOfBuffer    guibg=NONE    guifg=#222222 gui=NONE

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

hi Constant guifg=#7f95b1
