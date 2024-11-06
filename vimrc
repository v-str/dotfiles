"
" VUNDLE PART
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" fold/unfold methods,classes
Plugin 'tmhedberg/SimpylFold'

" python intendation
Plugin 'vim-scripts/indentpython.vim'

" autocompletion
Plugin 'Valloric/YouCompleteMe'

" Python syntax check
Plugin 'vim-syntastic/syntastic'

" PEP8 check
Plugin 'nvie/vim-flake8'

"NerdTree
Plugin 'scrooloose/nerdtree'

"Zenburn theme
Plugin 'jnurmine/Zenburn'

"powerline at the bottom of the screen
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"one half theme
Plugin 'sonph/onehalf', {'rtp': 'vim/'} 

"another theme file
Plugin 'jacoborus/tender.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'zacanger/angr.vim'
Plugin 'fcpg/vim-orbital'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
"				MY PART
"

"colorize color column
highlight ColorColumn ctermbg=lightgrey

"colortheme
"colorscheme tender
colorscheme orbital

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"close brackets and +tab between
inoremap {<CR> {<CR>}<Esc>ko<tab> 
inoremap [<CR> [<CR>]<Esc>
inoremap (<CR> (<CR>)<Esc>

syntax enable
filetype plugin indent on

autocmd TextChanged,TextChangedI <buffer> silent update "auto save

set foldmethod=indent "fold method,class bodies
set foldlevelstart=99
set foldlevel=99

nnoremap <space> za

au VimEnter *  NERDTree "NERDTree autostart

" remove unnecessary whitespaces
" highlight BadWhitespace ctermbg=red guibg=darkred
" highlight ctermbg=lightgreen ctermfg=darkblue




au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.py
	\ set autoindent "auto indendation
	\ set textwidth=79 "text width
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4 "set shift width as tab
	\ set expandtab
	\ set fileformat=unix

set noswapfile
set number
set encoding=utf-8
set hlsearch "highlight search
hi Search ctermbg=lightgreen
set incsearch "search while typing
se nobackup "disable backup
set colorcolumn=81 "color column
set ruler "display cursor line and column
set nocompatible "forget about Vi

set ts=4 sw=4

"for nested vimrc
set exrc
set secure

" disable YCM preview
set completeopt-=preview

" syntastic part
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['flake8']

:let python_highlight_all=1
syntax on

"expand NERDTree
:let g:NERDTreeWinSize=40
"show hidden by default
let NERDTreeShowHidden=1

" YCM goes away after 1 sec
:let g:ycm_autoclose_preview_window_after_completion=1

:let $PYTHONPATH='${V_BUILD_GITHUB}:${V_BUILD_GITHUB}/backend'

"g + Ctrl  ycm go to definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"vim-autopep8
autocmd FileType python noremap <buffer> <F3> :call Autopep8()<CR>

" add aggressive option (--aggressive)
let g:autopep8_aggressive=1

" add more aggressive options (--aggressive --aggressive)
let g:autopep8_aggressive=2

let g:autopep8_ignore="E501,W293,E121,E402"
" let g:autopep8_diff_type='vertical'
" autoformat on save
" let g:autopep8_on_save = 1

" disable show diff
let g:autopep8_disable_show_diff=1

