" Insetall plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/fzf'
Plug 'leafgarland/typescript-vim'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

call plug#end()

" Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Enable syntax
if !exists("g:syntax_on") | syntax enable | endif

" Case-insensitive incremental search
set ignorecase
set smartcase
set incsearch

" Centre search results
map N Nzz
map n nzz

" Highlight search results
set hlsearch
hi Search cterm=None ctermfg=black ctermbg=yellow

" Highglight matching parentheses
hi MatchParen ctermbg=4

" Highlight overflow and wrap text
set colorcolumn=81
set textwidth=80

" Indentation
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set smarttab
set backspace=2

" Hybrid line numbers
set relativenumber
set number

" Remap jj to <Esc> in INSERT mode only
inoremap jj <Esc>

" Press space to insert
nnoremap <Space> i

" Pane navigation
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-K><C-K>
noremap <C-L> <C-L><C-L>
noremap <C-H> <C-H><C-H>

" Tab to complete
set wildmenu
set wildmode=list:longest,full

" Remove trailing whitespaces
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Remove buffer upon exit
set nohidden
