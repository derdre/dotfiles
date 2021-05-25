" truecolors
if (has("termguicolors"))
    set termguicolors
endif

" vim-plug configuration
call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" status bar
Plug 'itchyny/lightline.vim'

" get git branch in lightline
Plug 'itchyny/vim-gitbranch'

" buffer visualization
Plug 'mengelbrecht/lightline-bufferline'

" tagbar
Plug 'preservim/tagbar'

" tree structure
Plug 'scrooloose/nerdtree'

" syntaxhighlighting
Plug 'sheerun/vim-polyglot'

" ale for linting
Plug 'dense-analysis/ale'

" vim-jedi for python autocompletion
Plug 'davidhalter/jedi-vim'

" autoupdating tags
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" lightline
set noshowmode " hide INSERT
set showtabline=2 " always show
let g:lightline = {
    \ 'colorscheme': 'material',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['close'] ]
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ }
    \ }

" ale
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'markdown': ['mdl'],
    \ 'sh': ['bashate']
    \ }

" nerdtree
let NERDTreeShowHidden=1

" theme
let g:material_theme_style='ocean'
colorscheme material

" expand path for file search
set path+=**

" numbers
set number

" set colorcolumn
set colorcolumn=80
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" wrap lines
set wrap
set textwidth=79

" tabbing
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType sh setlocal tabstop=4 shiftwidth=4 expandtab

" white spaces
set listchars=tab:▏·,trail:·,space:·,precedes:·,extends:#,nbsp:.
set list

" syntax highlighting
syntax enable

" distance to margin
set scrolloff=5

" activate mouse
set mouse=a

" scroll speed
set ttyfast

" status bar
set laststatus=2

