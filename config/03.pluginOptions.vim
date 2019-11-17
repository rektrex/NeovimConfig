"Vim commentary
autocmd FileType xdefaults setlocal commentstring=!\ %s

"netrw
let g:netrw_dirhistmax = 0

"pear-tree
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

"haskell-vim
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2

"ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
let g:float_preview#docked = 1

"fzf
nnoremap <leader>r :Rg<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>c :Commands<CR>

let g:fzf_buffers_jump = 1
let g:fzf_commands_expect = 'enter'

let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
    let buf = nvim_create_buf(v:false, v:true)
    let height = float2nr(&lines * 0.5)
    let width = float2nr(&columns * 0.6)
    let horizontal = float2nr((&columns - width) / 2)
    let vertical = 1

    let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height
        \ }

    call nvim_open_win(buf, v:true, opts)
endfunction
