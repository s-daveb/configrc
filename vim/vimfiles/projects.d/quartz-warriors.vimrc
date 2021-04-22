
let projroot = getcwd()

function! Test()
	cd debug
	!make qw-test -j 2 && ./qw-test
	cd ..
endfunction

command! Test :call Test()

autocmd BufWriteCmd *.cpp,*.hpp Test
