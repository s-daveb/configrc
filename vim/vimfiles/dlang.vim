

"let g:loaded_youcompleteme = 0
autocmd BufReadPre *.d let g:loaded_youcompleteme = 1
autocmd BufWinEnter *.d call MobileTagBar()

let g:dutyl_stdImportPaths=['/usr/include/dlang/ldc']
call dutyl#register#tool('dcd-client','/home/samus/.bin/dcd-client')
call dutyl#register#tool('dcd-server','/home/samus/.bin/dcd-server')

source $HOME/.vim/tagbar.dlang.vim

" vim: set ft=vim tw=80 expandtab tabstop=2 softtabstop=2 sw=2 :
