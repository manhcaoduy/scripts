" -----			Note		    --------

" font prefered: JetBrains Mono Medium Nerd Font Complete 14: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono

" -----              vundle                 --------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'scrooloose/nerdtree'

Plugin 'ryanoasis/vim-devicons'

Plugin 'morhetz/gruvbox'

Plugin 'voldikss/vim-floaterm'

call vundle#end()
filetype plugin indent on

" -----              vundle                 --------

" -----   general configuration 	    --------

set number
syntax on

set encoding=UTF-8

let g:gruvbox_italic=1

" -----    general configuration 	    --------

" -----        key mapping starts here      --------

inoremap jj <esc>

nnoremap <S-h> 10h
nnoremap <S-k> 10k
nnoremap <S-l> 10l
nnoremap <S-j> 10j

nnoremap <C-d> yyp 
nnoremap <cr> o<esc>

" -----        key mapping 		    --------

" --- change cursor for better recognizing modes----

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" --- change cursors ends here -----

" -----      	nerd tree		    -------

nnoremap q :NERDTree<cr>
nnoremap qq :NERDTreeFocus<cr>
nnoremap <C-q> :NERDTreeToggle<cr>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
	
" -----		nerd tree 		    -------

" -----		gruvbox		    	    -------

set bg=dark
colorscheme gruvbox

" -----		gruvbox		    	    -------

" -----		vim floaterm		    -------

" to start :FloaternNew<cr>

nnoremap <C-t> :FloatermToggle<cr>

" -----		vim floaterm		    -------
