let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3


let gitignore = netrw_gitignore#Hide()

let g:netrw_list_hide = '^\.git\/*\$'

if !(empty(gitignore)) && !(filereadable("configure.ac"))
	let g:netrw_list_hide = g:netrw_list_hide . ',' .  gitignore
endif

"unlet gitignore
"unlet g:netrw_list_hide

if &columns > 80 | let g:netrw_winsize = 15 | else | let g:netrw_winsize = 25 | endif

map <silent> <C-E> :Lexplore<cr>


fu! MapNtree()
	map <silent><buffer> gn    :Ntree<cr>
endfunction

autocmd FileType netrw :call MapNtree()
