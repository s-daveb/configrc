
" Common config
set backspace=indent,eol,start
set nowrap
set ruler
set noexpandtab

set colorcolumn=80
set softtabstop=0
set shiftwidth=8
set tabstop=8
set copyindent
"set preserveindent

color adventurous

"autocmd BufRead,BufWritePost scp://* :set bt=acwrite
"autocmd BufRead,BufWritePost sftp://* :set bt=acwrite

set background=dark
call togglebg#map("<F2>")

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
if has('gui')
  if has('mac')
    set guifont=Fira\ Code\ Retina:h16
  else
    set guifont=Fira\ Code\ 12
  endif

	set lines=24
	set columns=80

  au BufWinEnter :silent set title<CR>
	"#hi Folded term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=#455457 guibg=#1b1d1e gui=italic
	" imap <LeftClick> <nop>
	" imap <2-LeftClick> <nop>
else
  set mouse=a
"	let g:solarized_termtrans =	1
"	let g:solarized_termcolors = 16
"
"  let g:solarized_bold = 0
"  let g:solarized_underline = 1
"  let g:solarized_italic = 1
"  let g:solarized_contrast ="normal"
"  let g:solarized_visibility="normal"
"
  colo molokai
" hi Normal ctermbg=None
" hi NonText cterm=bold ctermfg=250 ctermbg=None
"	hi Visual ctermbg=DarkGrey ctermfg=None
"	hi Folded term=bold ctermbg=None ctermfg=245 gui=italic
endif

" vim: set ts=2 sts=2 et sw=2 :
