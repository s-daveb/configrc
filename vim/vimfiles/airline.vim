"Airline settings
let g:airline_powerline_fonts=1

if has('gui')
	let g:airline_theme = "molokai"
else
	let g:airline_theme =  "papercolor"
endif

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#whitespace#symbol = '` `'

let g:airline#extensions#netrw#enabled = 1

let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#enabled = 1


set laststatus=2
set encoding=utf8

function! AirlineInit()
  " unicode symbols
  let g:airline#extensions#tabline#right_sep = g:airline_right_sep
  let g:airline#extensions#tabline#left_sep = g:airline_left_sep
endfunction

au VimEnter * call AirlineInit()
