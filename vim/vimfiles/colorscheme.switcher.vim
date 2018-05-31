

" vim-colroscheme-switcher
let g:colorscheme_switcher_define_mappings = 0
let g:colorscheme_switcher_exclude_builtins = 1
let  g:colorscheme_switcher_keep_background = 1
map <F3> :NextColorScheme<CR>
map <S-F3> :PrevColorScheme<CR>
map [28~ :PrevColorScheme<CR> " For $TERM="screen-256color"

