"Vim commentary
autocmd FileType xdefaults setlocal commentstring=!\ %s

"netrw
let g:netrw_dirhistmax = 0

"mucomplete
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#no_mappings = 1
let g:mucomplete#minimum_prefix_length = 0
let g:mucomplete#empty_text = 1
let g:mucomplete#force_manual = 1

imap <unique> <C-n> <plug>(MUcompleteFwd)
imap <unique> <C-p> <plug>(MUcompleteBwd)
