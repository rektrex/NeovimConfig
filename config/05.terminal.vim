function! ConfigTerm()
    :startinsert!
    :set nonumber
    :set norelativenumber
    :exe "resize " . 10
endfunction

function! ToggleTerm(termname)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        :exe pane . "wincmd c"
    elseif buf > 0
        :exe "botright split"
        :exe "buffer " . a:termname
        :call ConfigTerm()
    else
        :exe "botright split"
        :terminal
        :call ConfigTerm()
        :exe "f " a:termname
    endif
endfunction

nnoremap <silent><M-t> :call ToggleTerm("Terminal")<CR>
tnoremap <silent><M-t> <C-\><C-n> :call ToggleTerm("Terminal")<CR>
tnoremap jj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
