call plug#begin('~/.local/share/nvim/plugged')

Plug 'BurntSushi/ripgrep'
Plug 'cocopon/iceberg.vim'
Plug 'easymotion/vim-easymotion'
" Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
" Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
" Plug 'mcchrish/zenbones.nvim'
Plug 'moll/vim-bbye'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'}
Plug 'nvim-telescope/telescope.nvim'
" Plug 'rktjmp/lush.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-test/vim-test'

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

nnoremap <SPACE> <Nop>

" let g:airline_theme = 'gruvbox_material'
let g:lightline = {'colorscheme': 'iceberg'}
" let g:lightline = {'colorscheme': 'onedark'}
" let g:lightline = {'colorscheme' : 'tokyonight'}
let g:fzf_colors = {
\ 'bg': ['bg', 'Normal'],
\ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
\ 'border': ['fg', 'Ignore'],
\ 'fg': ['fg', 'Normal'],
\ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'header': ['fg', 'Comment'],
\ 'hl': ['fg', 'Comment'],
\ 'hl+': ['fg', 'Statement'],
\ 'info': ['fg', 'PreProc'],
\ 'marker': ['fg', 'Keyword'],
\ 'pointer': ['fg', 'Exception'],
\ 'prompt': ['fg', 'Conditional'],
\ 'spinner': ['fg', 'Label']
\ }
" let g:onedark_terminal_italics = 1
" let g:tokyonight_style = 'night'
" let g:tokyonight_style = 'storm'
" let g:tokyonight_enable_italic = 1
let mapleader = ' '

colorscheme iceberg

autocmd BufWritePre * %s/\s\+$//e

inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-tab> <Esc>:tabnext<CR>i
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap kk <Esc>

nnoremap <C-Delete> :tabclose<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <Leader>/ :nohlsearch<CR>
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>bd :Bdelete<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bw :Bwipeout<CR>
nnoremap <Leader>ce :edit ~/.config/nvim/init.vim<CR>
nnoremap <Leader>cr :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>e :edit!<CR>
" nnoremap <Leader>fb :Buffers<CR>
" nnoremap <Leader>fc :Colors<CR>
" nnoremap <Leader>ff :Files<CR>
" nnoremap <Leader>fg :Rg<CR>
nnoremap <Leader>fC <Cmd>Telescope colorscheme<CR>
nnoremap <Leader>fb <Cmd>Telescope buffers<CR>
nnoremap <Leader>fc <Cmd>Telescope commands<CR>
nnoremap <Leader>ff <Cmd>Telescope find_files<CR>
nnoremap <Leader>fg <Cmd>Telescope live_grep<CR>
nnoremap <Leader>fgC <Cmd>Telescope git_bcommits<CR>
nnoremap <Leader>fgS <Cmd>Telescope git_stash<CR>
nnoremap <Leader>fgb <Cmd>Telescope git_branches<CR>
nnoremap <Leader>fgc <Cmd>Telescope git_commits<CR>
nnoremap <Leader>fgs <Cmd>Telescope git_status<CR>
nnoremap <Leader>fh <Cmd>Telescope help_tags<CR>
nnoremap <Leader>fhc <Cmd>Telescope command_history<CR>
nnoremap <Leader>fhs <Cmd>Telescope search_history<CR>
nnoremap <Leader>q :quit!<CR>
nnoremap <Leader>sh :split<CR>
nnoremap <Leader>sv :vsplit<CR>
nnoremap <Leader>tf :TestFile<CR>
nnoremap <Leader>tl :TestLast<CR>
nnoremap <Leader>tn :TestNearest<CR>
nnoremap <Leader>ts :TestSuite<CR>
nnoremap <Leader>tv :TestVisit<CR>
nnoremap <Leader>w :write!<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap H gT
nnoremap L gt
nnoremap ga <Plug>(EasyAlign)
nnoremap td :tabclose<CR>
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tm :tabm<Space>
nnoremap tn :tabnext<Space>
nnoremap tp :tabprev<Space>
nnoremap tt :tabedit<Space>

xnoremap ga <Plug>(EasyAlign)
