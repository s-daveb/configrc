
" Common config
set nowrap
set ruler
set noexpandtab

set colorcolumn=80
set softtabstop=0
set shiftwidth=8
set tabstop=8

set nocopyindent
set nopreserveindent


" Restore cursor position if possible
function! ResCur()
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction

augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END



""""""""""""""""""	GUI Configuration	"""""""""""""""""""""
if has('gui_running')
  if has('mac')
    set guifont=Fira\ Code:h14
    set macligatures
    set lines=48
    set columns=80
  else
    set guifont=Fira\ Code\ 16

  	set lines=24
  	set columns=80
  endif

  colo molokai
  "
  "au BufWinEnter :silent set title<CR>
	"#hi Folded term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=#455457 guibg=#1b1d1e gui=italic
	" imap <LeftClick> <nop>
	" imap <2-LeftClick> <nop>
else
  set ttymouse=xterm2

  colo default
  "jhi Normal ctermbg=None
  "hi NonText cterm=bold ctermfg=250 ctermbg=None
  "hi Visual ctermbg=White ctermfg=DarkGrey
	"hi Folded term=bold ctermbg=None ctermfg=245 gui=italic
endif

set mouse=a
" vim: set ts=2 sts=2 et sw=2 :
