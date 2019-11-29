" Insetall plugins
call plug#begin('~/.vim/plugged')

" Syntax for various languages
Plug 'sheerun/vim-polyglot'
" Async lint engine
Plug 'w0rp/ale'
" Intelligent JS support
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
" Git diff in vim gutter
Plug 'airblade/vim-gitgutter'
" Consisten styles across different editors
Plug 'editorconfig/editorconfig-vim'
" All about parentheses, quotes, etc
Plug 'tpope/vim-surround'
" A general purpose fuzzy finder
Plug 'junegunn/fzf'
" Intelligent autocomplete
Plug 'zxqfl/tabnine-vim'

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
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Tab to complete
set wildmenu
set wildmode=list:longest,full

" Remove trailing whitespaces
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Remove buffer upon exit
set nohidden
