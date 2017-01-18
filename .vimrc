execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4

set ignorecase
set smartcase

set number
set showcmd
set cursorline

set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch
nnoremap <leader><space> :nohlresearch<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10
noremap <space> za
set foldmethod=indent

set whichwrap+=h,l

noremap j gj
noremap k gk

noremap B ^
noremap E $

nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap <A-w> <C-w>


nnoremap gV `[v`]

let mapleader=","

nnoremap <leader>u :GundoToggle<CR>

" allow sudo save of a file
cmap w!! w !sudo tee > /dev/null %

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" swap files

" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim/_swap//

" backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,.

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/

