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
"set cul                 " highlight current line
set laststatus=2        " last window always has a statusline
set nohlsearch          " don't continue to highlight searched phrases
set incsearch           " highlight as you type your search
set ignorecase          " case-insensitive searching
set ruler               " always show info along bottom
set showmatch		" show matching brackets when cursor is over them

set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Fonts and Colors							      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256		" enable 256-color mode
syntax enable		" enable syntax highlighting
colorscheme silenthill	" set colorscheme

" Set encoding and language
set encoding=utf-8
set spelllang=en_us

" Disable spell checking for certain file types
au BufRead,BufNewFile *.ini
	\ set nospell

" Pretty Markdown files
augroup markdown
	au!
	au BufNewFile,BufRead *.md setlocal filetype=ghmarkdown
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Text and Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set smarttab

" Linux coding style guide recommends 8 character tabs
set shiftwidth=8
set tabstop=8

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

" IDE-like brace functionality
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

" Enable code folding by pressing spacebar
nnoremap <space> za

" Enable code folding for classes and methods
set foldmethod=indent
