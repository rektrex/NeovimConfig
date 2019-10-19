" show highlight group of the word under cursor
function! SynGroup()
    echo synIDattr(synID(line('.'), col('.'), 1), 'name')
endfun

nnoremap <silent> <leader>S : call SynGroup()<CR>

" toggle distraction free mode: hides tmux and statusline, and sets noshowcmd
let s:is_in_distraction_free_mode=0

function! s:DFree()
    if s:is_in_distraction_free_mode == 1
       set showcmd
       set laststatus=2
       silent !tmux set -g status on
       let s:is_in_distraction_free_mode=0
   else
        set noshowcmd
        set laststatus=0
        silent !tmux set -g status off
        let s:is_in_distraction_free_mode=1
    endif
endfun

command DFree call s:DFree()
