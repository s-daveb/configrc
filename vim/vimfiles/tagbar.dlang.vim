
" tagbar
let g:tagbar_ctags_bin = "$HOME/.bin/dtags"
let g:tagbar_type_d = {
	\ 'ctagstype' : 'd',
	\ 'kinds'     : [
		\ 'M:module',
		\ 'X:mixins',
		\ 'T:templates:1',
		\ 't:typedefs',
		\ 'g:enums',
		\ 'e:enumerators',
		\ 'c:classes',
		\ 'v:interfaces',
		\ 's:structs',
		\ 'u:unions',
		\ 'm:members',
		\ 'f:functions'
	\ ],
	\ 'sro' : '::',
	\ 'kind2scope' : {
		\ 'g' : 'enum',
		\ 'T' : 'template',
		\ 'c' : 'class',
		\ 'v' : 'interface',
		\ 's' : 'struct',
		\ 'u' : 'union'
	\ },
	\ 'scope2kind': {
		\ 'enum' : 'g',
		\ 'template' : 'T',
		\ 'class' : 'c',
		\ 'interface' : 'v',
		\ 'struct' : 's',
		\ 'union' : 'u'
	\ }
 \ }
