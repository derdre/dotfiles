" truecolors
if (has("termguicolors"))
   set termguicolors
endif

" plugins path
call plug#begin(stdpath('data') . '/plugged')

" themes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" syntax for python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" status bar
Plug 'itchyny/lightline.vim'

" tree structure
Plug 'scrooloose/nerdtree'

" color visualization
Plug 'norcalli/nvim-colorizer.lua'

" linging
Plug 'dense-analysis/ale'

" initialize plugins
call plug#end()

" Ale
let g:ale_linters = {'python': ['flake8']}
let g:ale_linters = {'markdown': ['mdl']}

" lightline
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'material',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'relativepath', 'modified' ] ]
    \ }
    \ }

" nerdtree
let NERDTreeShowHidden=1

" theme
let g:material_theme_style = 'ocean'
colorscheme material

" colorizer
lua require'colorizer'.setup()

" disable vi compatibility; not necessary in nvim
"set nocompatible

" expand path for file search
set path+=**

" syntax highlighting
syntax enable

" numbers
set number

" wrap lines
set wrap
set textwidth=79

" set colorcolumn; make color qiute dark
set colorcolumn=80
highlight ColorColumn ctermbg=60 guibg=#464b5d

" tabbing
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 expandtab

" white spaces
set listchars=tab:▏·,trail:·,space:·,precedes:·,extends:#,nbsp:.
set list

" encoding
set encoding=utf-8

" highlight matching search patterns
set hlsearch
set ignorecase

" status bar
set laststatus=2

" scroll speed
set ttyfast

