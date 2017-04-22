execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rosenfeld/conque-term'

syntax on

filetype indent on

colorscheme molokai

set guifont=Hack:h14
set backspace=indent,eol,start
set runtimepath^=~/.vim/bundle/ctrlp.vim
set nowrap
set tabstop=2
set shiftwidth=2
set guioptions-=L
set guioptions-=r
set guioptions-=T
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch

autocmd BufWritePre * :%s/\s\+$//e
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * ConqueTermSplit bash
autocmd VimEnter * wincmd p

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

cd /Users/bonesso/GitHub
