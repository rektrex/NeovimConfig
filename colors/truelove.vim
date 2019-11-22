hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='truelove'
set background=dark


" basic----------------------------------------------------------------------

hi Normal guibg=#212121 guifg=#dfdfdf gui=NONE
hi Cursor guibg=#c8c8c8 guifg=NONE gui=NONE
hi Title guibg=NONE guifg=#dfdfdf gui=UNDERLINE
hi Comment guibg=NONE guifg=#6f6f6f gui=NONE
hi SpecialComment guibg=NONE guifg=BROWN gui=NONE
hi Todo guibg=NONE guifg=BROWN gui=UNDERLINE
hi Directory guibg=NONE guifg=#dfc56d gui=NONE
hi LineNR guibg=NONE guifg=#6f6f6f gui=NONE
hi CursorLineNr guibg=NONE guifg=BROWN gui=NONE
hi SignColumn guibg=NONE guifg=NONE gui=NONE
hi Underlined guibg=NONE guifg=NONE gui=UNDERLINE
hi Visual guibg=#212121 guifg=#6f6f6f gui=UNDERLINE
hi VisualNOS guibg=NONE guifg=NONE gui=UNDERLINE
hi MatchParen guibg=#83a598 guifg=#212121 gui=NONE
hi IncSearch guibg=#dfc56d guifg=#212121 gui=NONE
hi Search guibg=#dfc56d guifg=#212121 gui=NONE
hi CursorColumn guibg=NONE guifg=NONE gui=NONE
hi CursorLine guibg=#373737 guifg=NONE gui=NONE
hi VertSplit guibg=NONE guifg=#dfdfdf gui=NONE
hi WildMenu guibg=NONE guifg=#88c563 gui=UNDERLINE
hi DiffAdd guibg=NONE guifg=#88c563 gui=NONE
hi DiffDelete guibg=NONE guifg=#e76d6d gui=NONE
hi DiffChange guibg=NONE guifg=#dfc56d gui=NONE
hi DiffText guibg=NONE guifg=#dfc56d gui=NONE
hi Pmenu guibg=#373737 guifg=#dfdfdf gui=NONE
hi PmenuSel guibg=#83a598 guifg=#212121 gui=NONE
hi PmenuSbar guibg=#373737 guifg=#88c563 gui=NONE
hi PmenuThumb guibg=#dfdfdf guifg=#83a598 gui=NONE
hi SpellBad guibg=NONE guifg=#e76d6d gui=UNDERCURL
hi SpellCap guibg=NONE guifg=#dfc56d gui=UNDERCURL
hi SpellLocal guibg=NONE guifg=#dfc56d gui=UNDERCURL
hi SpellRare guibg=NONE guifg=#dfc56d gui=UNDERCURL
hi ErrorMsg guibg=NONE guifg=#e76d6d gui=NONE
hi WarningMsg guibg=NONE guifg=#dfc56d gui=NONE
hi MoreMsg guibg=NONE guifg=#dfc56d gui=NONE
hi Question guibg=NONE guifg=#dfc56d gui=NONE
hi Error guibg=NONE guifg=#e76d6d gui=REVERSE
hi Ignore guibg=NONE guifg=NONE gui=NONE
hi EndOfBuffer guibg=NONE guifg=#212121 gui=NONE
hi NonText guibg=NONE guifg=#e76d6d gui=NONE
hi SpecialKey guibg=NONE guifg=#e76d6d gui=UNDERCURL
hi Statusline guibg=#373737 guifg=NONE gui=NONE
hi StatuslineNC guibg=#373737 guifg=NONE gui=NONE

" clear & override-----------------------------------------------------------

hi clear Constant
hi clear Statement
hi clear Type
hi clear Function
hi clear PreProc
hi clear Special
hi clear Identifier
hi Tag guibg=NONE guifg=NONE gui=UNDERLINE

" Help-----------------------------------------------------------------------

hi helpHyperTextJump guibg=NONE guifg=NONE gui=UNDERLINE

" typeScript-----------------------------------------------------------------

hi link typeScriptParens Delimiter

" vimscript------------------------------------------------------------------

hi link vimUserFunc Function

" javaScript-----------------------------------------------------------------

hi link javaScriptValue Constant
hi link javaScriptNumber javaScriptValue
hi link javaScriptNull javaScriptValue
hi link QuickFixLine PmenuSel

" quick-scope----------------------------------------------------------------

hi QuickScopePrimary guibg=NONE guifg=#88c563 gui=UNDERLINE
hi QuickScopeSecondary guibg=NONE guifg=#dfc56d gui=UNDERLINE
