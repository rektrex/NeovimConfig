let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
                \ 'left': [ [ 'mode', 'paste' ],
                \           [ 'readonly', 'filename', 'modified' ] ],
                \ 'right': [ [ 'lineinfo' ],
                \            [ 'filetype' ] ]
                \}
            \}

"Python syntax highlighting
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

"C++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"asyncomplete.vim
let g:asyncomplete_remove_duplicates = 1
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1

"vim-lsp
if executable('pyls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': { server_info->['pyls'] },
                \ 'whitelist': ['python'],
                \})
endif

if executable('clangd')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'clangd',
                \ 'cmd': { server_info->['clangd'] },
                \ 'whitelist': ['cpp', 'c', 'h', 'hpp'],
                \})
endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'rls',
                \ 'cmd': { server_info->['rustup', 'run', 'stable', 'rls'] },
                \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml')) },
                \ 'whitelist': ['rust'],
                \})
endif

if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'css-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        \ 'whitelist': ['css', 'less', 'sass'],
        \ })
endif

if executable('html-languageserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'html-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
        \ 'whitelist': ['html'],
        \ })
endif

"Chromatica
let g:chromatica#enable_at_startup=1
let g:chromatica#responsive_mode=1

"Semshi
let g:semshi#error_sign=v:false
