inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

nnoremap <buffer> <leader>n :LspNextError<CR>
nnoremap <buffer> <leader>p :LspPreviousError<CR>
nnoremap <buffer> <leader>q  :LspStopServer<CR>

nnoremap <buffer> <leader>r :LspRename<CR>
nnoremap <buffer> <leader>[ :LspDefinition<CR>
nnoremap <buffer> <leader>] :LspDeclaration<CR>
