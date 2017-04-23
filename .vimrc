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

" Set prefix used for custom key mappings
let mapleader = "\\"

" Insert timestamp after cursor position
map <Leader>ts "=strftime("%F %T %Z")<CR>p

" Insert email address after cursor position
map <Leader>eml aandrew.chace@gmail.com<Esc>

" RPM changelog entry
map <Leader>rpm "=strftime("%a %b %d %Y")<CR>pa<Space>Andrew Chace <andrew.chace@gmail.com><Esc>

" Single-quote all lines
map <Leader>sqa :%s/\(.*\)/'\1'<Esc>

" Single quote current line
map <Leader>sql :s/\(.*\)/'\1'<Esc>

" Double-quote all lines
map <Leader>dqa :%s/\(.*\)/"\1"<Esc>

" Double-quote current line
map <Leader>dql :s/\(.*\)/"\1"<Esc>

" Add trailing comma to all lines
map <Leader>tca :%s/\(.*\)/\1,<Esc>

" Add trailing comma to current line
map <Leader>tcl :%s/\(.*\)/\1,<Esc>

" Remove trailing whitespace from all lines
map <Leader>rtsa :%s/\s*$//g<Esc>

" Remove trailing whitespace from current line
map <Leader>rtsl :%s/\s*$//g<Esc>

" Show differences since time file was saved
map <Leader>diff :w !diff -u % -

" Comment line
map <Leader>cl :s/^/#/<CR>

" Uncomment line
map <Leader>ucl :s/^#//<CR>

" Toggle line numbers
map <Leader>ln :set number! number?<CR>

" Toggle line wrapping
map <Leader>wr :set wrap! wrap?<CR>

" Toggle autoindent mode
map <Leader>ai :set autoindent! autoindent?<CR>

" Toggle paste mode
map <Leader>pa :set paste! paste?<CR>

" Toggle display unprintable characters
map <Leader>li :set list! list?<CR>
