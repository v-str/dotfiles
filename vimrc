"macroses for programming
ab #d #define
ab #i #include
ab #b /***********************************************************************
ab #e ***********************************************************************/
ab #c /*comment*/

"show line numbers
set nu

"highlight search
set hlsearch

"disable backup
set nobackup

"color column
set colorcolumn=81

"colorize color column
highlight ColorColumn ctermbg=darkgrey

"autoindendation
set autoindent

"text width
set textwidth=80

"enable syntax highlight
syntax on

"disable swapfile
set noswapfile

"set path
let &path.="/usr/include/AL"

"disable autosave
set noautowrite

"set shift width as tab
set shiftwidth=4

"set tabstop=4
set ts=4

"Automatically closing brackets and +tab between
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>
inoremap (<CR> (<CR>)<Esc>
