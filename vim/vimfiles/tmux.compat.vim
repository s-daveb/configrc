
fu! Netrw_remap()
	silent! unmap <silent> <buffer> <C-l>
	silent! unmap <silent> <buffer> <C-t>
	silent! unmap <silent> <buffer> <C-j>
"	map <C-l> :TmuxNavigateRight<cr>
endfunction

au Filetype netrw,vimfiler call Netrw_remap()

