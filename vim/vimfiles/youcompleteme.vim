"YouCompleteMe Configuration
"
function! CppSyntaxCheck()
  TagbarClose
  Lclose
  YcmDiags
  silent botright lopen
  TagbarOpen
endfunction

command Lclose :windo if &buftype == "quickfix" || &buftype == "locationlist" || &buftype == "nofile" |  lclose | endif


let g:ycm_confirm_extra_conf = 0

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1

let g:ycm_open_loclist_on_ycm_diags = 0
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_error_symbol = '✘'

let g:ycm_server_keep_logfiles = 0
"let g:ycm_server_log_level = 'debug'

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.cpp = ['re![a-zA-Z_][a-zA-Z_0-9]{2,}']

au Filetype cpp let g:ycm_global_ycm_extra_conf = "/home/samus/work/.dev-config/youcompleteme/cpp/ycm_global_conf.py"
au Filetype c   let g:ycm_global_ycm_extra_conf = "/home/samus/work/.dev-config/youcompleteme/c/ycm_global_conf.py"

au Filetype c,cpp let g:ycm_min_num_of_chars_for_completion = 1

source $HOME/.vim/youcompleteme.keys.vim
source $HOME/.vim/SuperTab.vim
