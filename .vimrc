syntax enable
set paste
set number
set colorcolumn=80
"set background=dark
"set nocompatible
"colorscheme solarized
set showmode                                " show the mode we're currently in.
set showcmd                                " always display commands.
set showmatch                              " highlight matching brackets/showbraces.
set cursorline                              " visualize current line.
" filetype off
set rtp+=~/.vim/bundle/vundle/
" call vundle#begin()
call vundle#rc()
Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'rking/ag.vim'
Bundle 'geoffharcourt/vim-matchit'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'altercation/vim-colors-solarized'

" inori colorscheme
"Bundle 'duythinht/inori'
" silent! colorscheme inori

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let ruby_fold = 1
set foldlevelstart=20
filetype plugin on
set omnifunc=syntaxcomplete#Complete
