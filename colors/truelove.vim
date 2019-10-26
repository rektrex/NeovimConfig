hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='truelove'
set background=dark


" basic----------------------------------------------------------------------

hi Normal guibg=#212121 guifg=#dfdfdf gui=NONE
hi Cursor guibg=#c8c8c8 guifg=NONE gui=NONE
hi Title guibg=NONE guifg=#dfdfdf gui=BOLDUNDERLINE
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
hi MatchParen guibg=NONE guifg=NONE gui=BOLD
hi IncSearch guibg=#dfc56d guifg=#212121 gui=NONE
hi Search guibg=#dfc56d guifg=#212121 gui=NONE
hi CursorColumn guibg=NONE guifg=NONE gui=NONE
hi CursorLine guibg=#373737 guifg=NONE gui=NONE
hi VertSplit guibg=NONE guifg=#dfdfdf gui=BOLD
hi WildMenu guibg=NONE guifg=#88c563 gui=BOLDUNDERLINE
hi DiffAdd guibg=NONE guifg=#88c563 gui=NONE
hi DiffDelete guibg=NONE guifg=#e76d6d gui=NONE
hi DiffChange guibg=NONE guifg=#dfc56d gui=NONE
hi DiffText guibg=NONE guifg=#dfc56d gui=NONE
hi Pmenu guibg=#373737 guifg=#dfdfdf gui=NONE
hi PmenuSel guibg=#373737 guifg=#ff6188 gui=NONE
hi PmenuSbar guibg=#373737 guifg=#88c563 gui=NONE
hi PmenuThumb guibg=#ff6188 guifg=#dfdfdf gui=NONE
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
hi Statusline guibg=NONE guifg=#6f6f6f gui=UNDERLINE

" clear & override-----------------------------------------------------------

hi clear Constant
hi clear Statement
hi clear Type
hi clear Function
hi clear PreProc
hi clear Special
hi clear Identifier
hi Constant guibg=NONE guifg=#ff6188 gui=NONE
hi Tag guibg=NONE guifg=NONE gui=UNDERLINE

" coc.nvim-------------------------------------------------------------------

hi CocErrorSign guibg=NONE guifg=#e76d6d gui=NONE
hi CocWarningSign guibg=NONE guifg=#dfc56d gui=NONE
hi CocInfoSign guibg=NONE guifg=#dfc56d gui=NONE
hi CocHintSign guibg=NONE guifg=#dfc56d gui=NONE

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

" statusline-----------------------------------------------------------------

set statusline=
set statusline+=\ %{StatuslineMode()}
set statusline+=%=
set statusline+=%{coc#status()}\ 
set statusline+=\ %t
set statusline+=%m
set statusline+=%r
set laststatus=2

function! StatuslineMode()
    let l:mode=mode()
    if l:mode==#"n"
        return "NORMAL"
    elseif l:mode==?"v"
        return "VISUAL"
    elseif l:mode==#"i"
        return "INSERT"
    elseif l:mode==#"R"
        return "REPLACE"
    elseif l:mode==?"s"
        return "SELECT"
    elseif l:mode==#"t"
        return "TERMINAL"
    elseif l:mode==#"c"
        return "COMMAND"
    elseif l:mode==#"!"
        return "SHELL"
    endif
endfunction
