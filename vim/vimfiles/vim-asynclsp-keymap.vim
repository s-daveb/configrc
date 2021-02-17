inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

nnoremap <buffer> <leader>n :LspNextError<CR>
nnoremap <buffer> <leader>p :LspPreviousError<CR>
nnoremap <buffer> <leader>r :<Plug>(asyncomplete_force_refresh)<CR>
nnoremap <buffer> <leader>] :LspDefinition<CR>`
