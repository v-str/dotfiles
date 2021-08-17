"colorize color column
highlight ColorColumn ctermbg=darkgrey 
"close brackets and +tab between
inoremap {<CR> {<CR>}<Esc>ko<tab> 
inoremap [<CR> [<CR>]<Esc>
inoremap (<CR> (<CR>)<Esc>

" map for #include <*.h>
map <F2> i#include <*.h><Esc><BS>hhxi

syntax enable
filetype plugin indent on

colorscheme wombat256grf "set nice theme

"let &path.="/usr/include/AL:/usr/include/linux/AL" "set path
set path+=/usr/include/*
set path+=/usr/include/linux/*
set autoindent "auto indendation
"set textwidth=80 "text width
set noswapfile "disable swap file
set noautowrite "disable autosave
set shiftwidth=4 "set shift width as tab
set ts=4 "set tab stop=4
set nu "show line numbers
set hlsearch "highlight search
set incsearch "search while typing
set nobackup "disable backup
set colorcolumn=81 "color column
set ruler "display cursor line and column
set si "smart intend for C programs
set nocompatible "forget about Vi

au VimEnter *  NERDTree "NERDTree autostart

"cpp highlight features
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
