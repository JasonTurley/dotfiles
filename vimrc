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

set nocompatible 	" get rid of Vi compatibility mode. SET FIRST!

" Enable filetype detection - recommended to have Vi compatibility off
filetype on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI								      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number            	" show line numbers
set numberwidth=6       " make the number gutter 6 characters wide
set cul                 " highlight current line
set laststatus=2        " last window always has a statusline
set nohlsearch          " Don't continue to highlight searched phrases
set incsearch           " But do highlight as you type your search
set ignorecase          " Make searches case-insensitive
set ruler               " Always show info along bottom
set showmatch		" show matching brackets when cursor is over them

set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set visualbell


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Fonts and Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256		" enable 256-color mode
syntax enable		" enable syntax highlighting
colorscheme default	" set colorscheme

" Set encoding and language
set encoding=utf-8
set spelllang=en_us

" Disable spell checking for certain file types
au BufRead,BufNewFile *.ini
	\ set nospell

" Pretty Markdown files
augroup markdown
	au!
	au BufNewFile,BufRead *.md, *.markdown setlocal filetype=ghmarkdown
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Text and Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent		" enable auto-indent
set smartindent		" enable smart indent
set wrap		" wrap lines
set smarttab

" Linux coding style guide recommends 8 character tabs
set shiftwidth=8
set tabstop=8

" Linebreak on N characters
set lbr
set tw=80

set mouse=a		" enable full mouse support

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Edit mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remap VIM 0 to first non-blank character
map 0 ^			

" IDE-like brace functionality
"inoremap \" \""<left>
"inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O<TAB>


inoremap jj <Esc>	" remap jj to Escape key in insert mode

" Swap : and ; to avoid pressing the shift key
noremap ; :
noremap : ;

" Enable code folding by pressing spacebar
nnoremap <space> za

" Enable code folding for classes and methods
set foldmethod=indent

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z]]
