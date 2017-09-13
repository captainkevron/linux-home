" http://dougblack.io/words/a-good-vimrc.html

" Appearance
set number
set cursorline
set showmatch
filetype indent on


" Syntax specific options
syntax on

" Tab specific options
set tabstop=4                   "A tab is 4 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set smarttab                    "Indent instead of tab at start of line
set shiftround                  "Round spaces to nearest shiftwidth multiple
set nojoinspaces                "Don't convert spaces to tabs

" Search
set incsearch
set hlsearch

" Mappings
inoremap jk <Esc>
let mapleader = "\<Space>"
nnoremap <leader>nt :NERDTreeToggle<CR>

" autocmds
autocmd BufWritePre *.py,*.js,*.java,*.go,*.rb,*.elm,*.html,*.css,*.md,*.txt :%s/\s\+$//e

" language specific settings
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Install plugins
execute pathogen#infect()
