" Hi
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
Plugin 'git@github.com:freitass/todo.txt-vim.git'
Plugin 'git@github.com:mfukar/robotframework-vim.git'

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

call vundle#end()
autocmd!
set nocompatible
set encoding=utf-8

filetype on
filetype plugin on
filetype indent on
syntax on

" some issues with indent, Qad
" :set et
"	:set ai
" to fix in runtime
"


set t_Co=256
set smarttab
set cindent
set smartindent
set tabstop=2
set shiftwidth=2
set backspace=2
set autoindent
set softtabstop=2
set nu
set ruler
set hlsearch
set shell=bash
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set enc=utf-8
set statusline+=%*
set statusline+=%F
set fileencoding=utf-8
set paste

colorscheme elflord

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%#warningmsg#

let mapleader = ","
let maplocalleader = "-"

let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1
let NERDTreeNodeDelimiter = "\u00a0"

nnoremap <silent> <C-l> :nohl<CR><C-l>

nmap <LocalLeader>nn  :NERDTreeToggle<cr>
nmap <LocalLeader>tt  :Tlist<cr>
nmap <LocalLeader>so  :so %<cr>
nmap <LocalLeader>sb  :set scrollbind<CR>
nmap <LocalLeader>rc  :split ~/Desktop/workspace/vimrc/.vimrc<CR>
nmap <LocalLeader>ss  :syntax on<CR>
nmap <LocalLeader>bf  :buffers <CR>:buffer

map <F1>  :NERDTreeToggle<CR>
map <F5>  :buffers<CR>:buffer<Space>
map <F6>  :ls<CR>
map <F9>  :TlistToggle<CR>
map <F11> :vsplit<CR>
map <F10> :hide<CR>
map <F12> :split<CR>

let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
let g:ycm_clangd_binary_path = "/usr/bin/clangd"

autocmd BufWritePost *.pl    :TlistUpdate
autocmd BufWritePost *.py    :TlistUpdate
autocmd BufWritePost *.hpp   :TlistUpdate
autocmd BufWritePost *.cpp   :TlistUpdate
autocmd BufWritePost *.h     :TlistUpdate
autocmd BufWritePost *.c     :TlistUpdate
autocmd BufWritePre  *.robot :%s/\s\+$//e
autocmd BufWritePre  *.pl    :%s/\s\+$//e
autocmd BufWritePre  *.c     :%s/\s\+$//e
autocmd BufWritePre  *.c     :%s/\s\+$//e
autocmd BufWritePre  *.py    :%s/\s\+$//e
autocmd BufWritePre  *.vimrc :%s/\s\+$//e
autocmd BufWritePre  *.reqm  :%s/\s\+$//e
autocmd BufWritePre  *.xml   :%s/\s\+$//e
autocmd BufWritePre  *.json  :%s/\s\+$//e

autocmd VimEnter * call StartUp()
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <F5> :buffers<CR>:buffer<Space>

map <F12> :split<CR>
map <F11> :vsplit<CR>
map <F10> :hide<CR>
map <F9>  :TlistToggle<CR>
map <F8>  :map<CR>
map <F7> mzgg.=G`z<CR>
map <F6> :ls<CR>
map <F1> :NERDTreeToggle<CR>
map <F3> :call ErrorListToggle()<CR>
map <C-r> :set scrollbind<CR>

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
