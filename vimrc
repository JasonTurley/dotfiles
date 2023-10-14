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

if has("autocmd")
	" Enable filetype detection.
	" Use the default filetype settings and do language-dependent indenting
	filetype plugin indent on

	" Open file at last read position
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

endif " has("autocmd")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI								      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number            	" show line numbers
set numberwidth=6       " make the number gutter 6 characters wide
set hls			" highlight search
set incsearch           " highlight as you type your search
set ignorecase          " case-insensitive searching
set showmatch		" show matching brackets when cursor is over them

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Fonts and Colors							      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256		" enable 256-color mode
syntax enable		" enable syntax highlighting
colorscheme aqua

" Set encoding and language
set encoding=utf-8
set spelllang=en_us

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Text and Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a		" enable full mouse support

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Edit mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" add timestamp - useful when penetration testing
nmap <F5> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p -- ")
imap <F5> <C-R>=strftime("%Y-%m-%d %a %I:%M %p -- ") 

" remap VIM 0 to first non-blank character
map 0 ^			

" IDE-like closing quotes and braces functionality
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" remap jj to Escape key in insert mode
inoremap jj <Esc>	

" Swap : and ; to avoid pressing the shift key
"noremap ; :
"noremap : ;
