""""""VUNDLE CONFIGURATION""""""
" set the runtime path to include Vundle and initialize
filetype off

call plug#begin('~/.vim/plug')
" dependencies
Plug 'xolox/vim-misc'

" Filetypes
Plug 'hallison/vim-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'sjl/splice.vim'
Plug 'dag/vim-fish'
Plug 'LeonB/vim-nginx'
Plug 'pangloss/vim-javascript'
Plug 'skwp/vim-html-escape'

" Language Completion
"YouCompleteMe is a dumpster fire
" FUCK DEOPLETE TOO
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
" -Ahem- Language Support

"
" DEFINITELY FUCK THIS PIECE OF SHIT TOO
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }


"- Ahem - /WORKING/ Language Completion
source $HOME/.vim/vim-plug-completion.vim

" Functionality
Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'  " Was causing issues with deoplete, try again later
"Plug 'ervandew/supertab' " Needed to integrate with autocomplete plugins
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-abolish'
Plug 'ntpeters/vim-better-whitespace'
Plug 'idanarye/breeze.vim'

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'moll/vim-bbye' " buffer cleaner
Plug 'wikitopian/hardmode'


" Bloated alternatives to netrw - do not use
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/neossh.vim'
"Plug 'Shougo/vimfiler.vim'
"Plug 'scrooloose/nerdtree'

" Netrw config
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'justinmk/vim-dirvish'

" Tmux integration
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'

" Sexy status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'

" Colors
Plug 'spf13/vim-colors'
Plug 'altercation/vim-colors-solarized'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'kitten/vim-adventurous'  " Dracula's baby


" Git/HG integration
Plug 'ludovicchabant/vim-lawrencium'
Plug 'tpope/vim-fugitive'
Plug 'amiorin/vim-project'

" Project Integration
Plug 'editorconfig/editorconfig-vim'


" " All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""" PLUGIN CONFIG """""""""""""""""""""""""""""""
"
source $HOME/.vim/vim-editorconfig.vim
source $HOME/.vim/colorscheme.switcher.vim
source $HOME/.vim/airline.vim
source $HOME/.vim/tagbar.vim
source $HOME/.vim/vim-asynclsp.vim

source $HOME/.vim/UltiSnips.vim
source $HOME/.vim/CtrlP.vim
source $HOME/.vim/projects.vim
source $HOME/.vim/netrw-conf.vim
source $HOME/.vim/better-whitespace.vim
source $HOME/.vim/hardmode.vim
source $HOME/.vim/tmux.compat.vim

