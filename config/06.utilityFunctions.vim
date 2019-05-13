" show highlight group of the word under cursor
function! SynGroup()
    echo synIDattr(synID(line('.'), col('.'), 1), 'name')
endfun

nnoremap <silent> S : call SynGroup()<CR>
