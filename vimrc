filetype plugin on
set nocompatible "Follow vim and not vi standard
filetype off "Needed at the start of vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Start plugins
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle
Plugin 'vim-scripts/indentpython.vim' "Better indentation for python
"Plugin 'vim-syntastic/syntastic' " syntax highlight
"Plugin 'ambv/black' " python style guide
"Plugin 'Valloric/YouCompleteMe' " autocomplete plugin

"End plugins

call vundle#end()            " required


filetype plugin indent on "switch filetype on again
set number "numbers to the left

"let g:haskell_classic_highlighting = 1
"let python_highlight_all=1
syntax on


set tabstop=2 shiftwidth=2 expandtab
autocmd FileType c,cf,xls setlocal noexpandtab 

" ghc type checker and get that information inside vim.
" call with \ht, \htc
nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr> 


"F2 toggles paste mode (turns off indentation)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set backspace=2 " make backspace work like most other programs


":help number_relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set nu rnu
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

"execute pathogen#infect()

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
"let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
"let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
"let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
"let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
"let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
"let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

"" ################
"" enable vundle which is a package manager
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'gmarik/Vundle.vim'
"" Plugin 'mlent/ale' 
"" has a small change for multi-line ghc errors, see below
"Plugin 'w0rp/ale'
"Plugin 'vim-airline/vim-airline'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'Shougo/vimproc'
"call vundle#end()
"" end vundle stuff
"" ###########

"set relativenumber 
"set synmaxcol=200
