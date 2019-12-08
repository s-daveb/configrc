inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

nnoremap <buffer> ,n :LspNextError<CR>
nnoremap <buffer> ,p :LspPreviousError<CR>imap <m-r> <Plug>(asyncomplete_force_refresh)

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_remove_duplicates = 1
let g:lsp_async_completion = 1

"  Enable disagnostics
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_remove_duplicates = 1
let g:lsp_async_completion = 1

"  Enable disagnostics
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'} " icons require GUI
let g:lsp_signs_hint = {'text': '!?' } " icons require GUI


if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
    	\ })
endif


let g:tmuxcomplete#asyncomplete_source_options = {
    \ 'name':      'tmuxcomplete',
    \ 'whitelist': ['*'],
    \ 'blacklist': ['python', 'go', 'c', 'cpp', 'objc', 'objcpp', 'cc'],
    \ 'config': {
    \     'splitmode':      'words',
    \     'filter_prefix':   1,
    \     'show_incomplete': 1,
    \     'sort_candidates': 0,
    \     'scrollback':      0,
    \     'truncate':        0
    \     },
\ }

if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'initialization_options': { 'cacheDirectory': '/tmp/cquery/cache' },
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'whitelist': ['c', 'cpp', 'c.doxygen', 'cpp.doxygen', 'objc', 'objcpp', 'cc'],
      \ })
endif

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'blacklist': ['python', 'go', 'c', 'cpp', 'h', 'hpp', 'objc', 'objcpp', 'cc'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ }))


autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS


if has('python3')
    let g:UltiSnipsExpandTrigger="<c-l>"
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"

    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif
"let g:lsp_log_verbose = 1

" for asyncomplete.vim log
"let g:asyncomplete_log_file = expand('~/asyncomplete.log')


" vim:set et sts=0 sw=4 ts=4 tw=80:
