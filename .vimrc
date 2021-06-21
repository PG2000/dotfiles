set nocompatible
set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
call plug#end()

filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

colorscheme badwolf
syntax enable

set tabstop=4
set softtabstop=4
set expandtab
set number relativenumber
set hls is
set showcmd
set cursorline
set cursorcolumn
set foldenable
set foldlevelstart=10
set foldnestmax=10
set wildmenu
set hidden
nnoremap <space> za
set foldmethod=indent

"maps CTRL-S to save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
