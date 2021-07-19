"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
" 	Jason Turley - @_jasonturley
"
" Sections:
" 	01. General
" 	02. VIM UI
" 	03. Fonts and Colors
"	04. Text and Formatting 
"	05. Edit mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General								      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Get rid of Vi compatibility mode. SET FIRST!
set nocompatible 	

" Enable filetype detection - recommended to have Vi compatibility off
filetype on

" Open file at last read position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI								      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number            	" show line numbers
set numberwidth=6       " make the number gutter 6 characters wide
set nohlsearch          " don't continue to highlight searched phrases
set incsearch           " highlight as you type your search
set ignorecase          " case-insensitive searching
set showmatch		" show matching brackets when cursor is over them


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Fonts and Colors							      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256		" enable 256-color mode
syntax enable		" enable syntax highlighting
colorscheme 0x7A69_dark

" Set encoding and language
set encoding=utf-8
set spelllang=en_us

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Text and Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set smarttab

" The Linux Coding Style Guide uses 8 character tabs
set shiftwidth=8
set tabstop=8

" Set tabs to 4 characters when using Python
augroup python
	au!
	au BufNewFile,BufRead *.py set shiftwidth=4
	au BufNewFile,BufRead *.py set tabstop=4
augroup END

" Wrap lines that are longer than 80 characters long
set lbr
set textwidth=80
set wrap		

set mouse=a		" enable full mouse support

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Edit mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remap VIM 0 to first non-blank character
map 0 ^			

" IDE-like closing quotes and braces functionality
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O<TAB>

" remap jj to Escape key in insert mode
inoremap jj <Esc>	

" Swap : and ; to avoid pressing the shift key
noremap ; :
noremap : ;
