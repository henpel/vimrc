set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/vim-scripts/taglist.vim.git'

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
filetype plugin indent on    " required

set t_Co=256
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set nu
set ruler
set hlsearch
set shell=bash
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set enc=utf-8
set fileencoding=utf-8
colorscheme elflord

" syntax on
" set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
" set statusline+=%#warningmsg#
"
set statusline+=%*
set statusline+=%F

let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1
nmap <LocalLeader>nn :NERDTreeToggle<cr>

let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
let g:ycm_clangd_binary_path = "/usr/bin/clangd"

nmap <LocalLeader>tt :Tlist<cr>

autocmd BufWritePost *.pl :TlistUpdate
autocmd BufWritePost *.py :TlistUpdate
autocmd BufWritePost *.h :TlistUpdate
autocmd BufWritePost *.c :TlistUpdate
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd VimEnter * call StartUp()
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

hi xMacro ctermfg=magenta cterm=NONE
hi xOper ctermfg=Red cterm=NONE
syntax match xMacro  /^#include.*/
syntax match xMacro /^#define.*/
syntax match xMacro /^#el.*/
syntax match xMacro /^#if.*/
syntax match xMacro /^#end.*/
syntax match xOper /||/
syntax match xOper /&&/
syntax match xOper /==/
syntax match xOper /!=/
syntax match xOper />=/
syntax match xOper /<=/
syntax match xOper /-/
syntax match xOper /+/
syntax match xOper /->/


nnoremap <silent> <C-l> :nohl<CR><C-l>
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
nnoremap <F5> :buffers<CR>:buffer<Space>

set backspace=2 
map <esc>OH <esc>
cmap <esc>OH <home>
nmap <esc>OH 0
imap <esc>OF <esc>
cmap <esc>OF <end>

function! StartUp()
    if 0 == argc()
        "NERDTree
    end
endfunction
