syntax on
filetype plugin on
set fencs=ucs-bom,utf-16le,utf-8,default,latin1

set ts=4 sts=4 et 
set nowrap
set colorcolumn=80
set hlsearch 

if has('gui')
        colo dracula
elseif 
	colo solarized
endif

set guifont=Fira_Code:h9:cANSI:qDRAFT

source ~/vimfiles/filebrowsing.vim
source ~/vimfiles/ack.vim

