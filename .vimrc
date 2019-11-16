set nocompatible
filetype off

set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'stephpy/vim-yaml'
call vundle#end()
filetype plugin indent on
filetype plugin on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

colorscheme badwolf
syntax enable

set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

"maps CTRL-S to save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
