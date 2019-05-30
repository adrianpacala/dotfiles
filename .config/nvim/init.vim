call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

call plug#end()

set background=dark
set ignorecase
set noswapfile
set number
set shiftwidth=2
set smartcase
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set termguicolors

colorscheme onedark

let g:lightline = { 'colorscheme': 'onedark' }
let g:onedark_terminal_italics = 1
let mapleader = ','

autocmd BufWritePre * %s/\s\+$//e

inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap kk <Esc>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <Leader>ce :edit ~/.config/nvim/init.vim<CR>
nnoremap <Leader>cr :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>e :edit!<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>q :quit!<CR>
nnoremap <Leader>sh :split<CR>
nnoremap <Leader>sv :vsplit<CR>
nnoremap <Leader>w :write!<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <silent> <Leader><Leader> :nohlsearch<CR>
