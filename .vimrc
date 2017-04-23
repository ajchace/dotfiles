" Load pathogen plugin
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"-------------------------------------------------------------------------------

filetype plugin on
filetype indent on
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set nowrap
set modeline
set laststatus=2
set textwidth=78

"-------------------------------------------------------------------------------

" Solarized
set background="dark"
let g:solarized_contrast="high"
let g:solarized_termcolors=256
colorscheme solarized
let g:AirlineTheme="solarized"

" PaperColor
"set background="light"
"colorscheme PaperColor
"let g:AirlineTheme="papercolor"

"-------------------------------------------------------------------------------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 3
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_loc_list_height = 5

"-------------------------------------------------------------------------------

" Insert timestamp after cursor position
map \ts "=strftime("%F %T %Z")<CR>p

" Insert email address after cursor position
map \eml aandrew.chace@gmail.com<Esc>

" RPM changelog entry
map \rpm "=strftime("%a %b %d %Y")<CR>pa<Space>Andrew Chace <andrew.chace@gmail.com><Esc>

" Single-quote all lines
map \sqa :%s/\(.*\)/'\1'<Esc>

" Single quote current line
map \sql :s/\(.*\)/'\1'<Esc>

" Double-quote all lines
map \dqa :%s/\(.*\)/"\1"<Esc>

" Double-quote current line
map \dql :s/\(.*\)/"\1"<Esc>

" Add trailing comma to all lines
map \tca :%s/\(.*\)/\1,<Esc>

" Add trailing comma to current line
map \tcl :%s/\(.*\)/\1,<Esc>

" Remove trailing whitespace from all lines
map \rtsa :%s/\s*$//g<Esc>

" Remove trailing whitespace from current line
map \rtsl :%s/\s*$//g<Esc>

" Show differences since time file was saved
map \diff :w !diff -u % -

" Comment line
map \cl :s/^/#/<CR>

" Uncomment line
map \ucl :s/^#//<CR>

" Toggle line numbers
map \ln :set number! number?<CR>

" Toggle line wrapping
map \wr :set wrap! wrap?<CR>

" Toggle autoindent mode
map \ai :set autoindent! autoindent?<CR>

" Toggle paste mode
map \pa :set paste! paste?<CR>

" Toggle display unprintable characters
map \li :set list! list?<CR>
