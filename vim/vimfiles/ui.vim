
" Common config
set nowrap
set ruler
set noexpandtab

set colorcolumn=80
set softtabstop=0
set shiftwidth=8
set tabstop=8

set notitle
set nocindent
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
    set guifont=Iosevka-Slaggathor:h14
    set macligatures
    set lines=48
    set columns=80
  else
    set guifont=Fira\ Code\ 16

  	set lines=24
  	set columns=80
  endif

  colo dracula
  "
	"#hi Folded term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=#455457 guibg=#1b1d1e gui=italic
	" imap <LeftClick> <nop>
	" imap <2-LeftClick> <nop>
else
  set ttymouse=xterm2

  au BufWinEnter :silent set title<CR>
  colo default

hi Normal ctermbg=None
hi NonText cterm=bold ctermfg=245 ctermbg=None
hi Visual ctermbg=White ctermfg=DarkGrey
"	hi Folded term=bold ctermbg=None ctermfg=245
hi SignColumn ctermbg=None cterm=bold

endif

hi lspReference ctermfg=DarkGrey ctermbg=none cterm=underline gui=underline  guifg=Grey
hi Pmenu guifg=white guibg=#34363A ctermbg=none ctermfg=245 cterm=bold
hi PmenuSel cterm=bold gui=bold

set mouse=a
let mapleader = ","

nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" vim: set ts=2 sts=2 et sw=2 :
