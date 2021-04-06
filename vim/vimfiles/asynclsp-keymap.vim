inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

nnoremap <buffer> <D-n> :LspNextError<CR>
nnoremap <buffer> <D-p> :LspPreviousError<CR>
nnoremap <buffer> <D-S> :LspStopServer<CR>

nnoremap <buffer> <D-r> :LspRename<CR>
nnoremap <buffer> <D-[> :LspDefinition<CR>
nnoremap <buffer> <D-]> :LspDeclaration<CR>
