"let g:ale_emit_conflict_warnings = 1
filetype plugin on
filetype plugin indent on
set number "numbers to the left
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

let g:haskell_classic_highlighting = 1
syntax on

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
set tabstop=2 shiftwidth=2 expandtab
autocmd FileType c,cf,xls setlocal noexpandtab 

"enables Airline to report ALE information to you.
"let g:airline#extensions#ale#enabled = 1

" ghc type checker and get that information inside vim.
" call with \ht, \htc
nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr> 

"let g:syntastic_always_populate_loc_list = 0 
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_pylint_args = '-E'

"F2 toggles paste mode (turns off indentation)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set backspace=2 " make backspace work like most other programs

":help number_relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set nonu
  else
    set rnu
  endif
endfunc

execute pathogen#infect()
nnoremap <C-n> :call NumberToggle()<cr>
