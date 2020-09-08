set encoding=utf-8
set number relativenumber
syntax enable
let python_highlight_all=1
set noswapfile
set hidden
set nobackup
set nowritebackup
set scrolloff=7
set backspace=indent,eol,start
set undodir=~/.vim/undodir
set undofile
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
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

" Leader key
let mapleader = ','

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
