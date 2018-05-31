" Tagbar Setup



function MobileTagBar()
  if $CELLPHONETELEPHONE != 1
    TagbarToggle
  endif
endfunction


au BufWinEnter *.c,*.cpp,*.h,*.hpp, TagbarOpen
au BufWinEnter * if &previewwindow | resize 5

let tagbar_width= 30
let tagbar_expand = 1

source ~/.vim/tagbar.keys.vim
