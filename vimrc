"macroses for programming
ab #d #define
ab #i #include
ab #b /***********************************************************************
ab #e ***********************************************************************/
ab #c /*comment*/

"colorize color column
highlight ColorColumn ctermbg=darkgrey 
"close brackets and +tab between
inoremap {<CR> {<CR>}<Esc>ko<tab> 
inoremap [<CR> [<CR>]<Esc>
inoremap (<CR> (<CR>)<Esc>

" map for #include <*.h>
map <F2> i#include <*.h><Esc><BS>hhxi


syntax on "enable syntax highlight
colorscheme wombat256grf "set nice theme

"let &path.="/usr/include/AL:/usr/include/linux/AL" "set path
set path+=/usr/include/*
set path+=/usr/include/linux/*
set autoindent "auto indendation
set textwidth=80 "text width
set noswapfile "disable swap file
set noautowrite "disable autosave
set shiftwidth=4 "set shift width as tab
set ts=4 "set tab stop=4
set nu "show line numbers
set hlsearch "highlight search
set nobackup "disable backup
set colorcolumn=81 "color column
set ruler "display cursor line and column
set si "smart intend for C programs

