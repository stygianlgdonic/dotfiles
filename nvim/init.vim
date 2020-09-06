set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set hidden
set nobackup
set nowritebackup
set scrolloff=7
set backspace=indent,eol,start
set undodir=~/.vim/undodir
set undofile
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'

set cmdheight=2
