"ctrlp setup
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)|unittest-cpp$',
    \ 'file': '\v\.(exe|so|dll|Po|o|obj)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_switch_buffer = 'e'
" let g:ctrlp_cmd = 'CtrlPBuffer'
