set nocompatible
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
set omnifunc=syntaxcomplete#Complete

let g:syntastic_python_flake8_args="--ignore=E501,W601,E221"

call pathogen#infect()
call pathogen#helptags()

colorscheme elflord

syntax on
filetype plugin indent on 

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3
let g:syntastic_c_armcc_args="--no_code_gen"
let g:syntastic_c_checkers=['gcc']
let g:syntastic_python_checkers=['flake8']

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_c_include_dirs = ['']

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
nmap <LocalLeader>tt :Tlist<cr> 

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType py set omnifunc=pythoncompete#Complete
autocmd BufWritePost *.pl :TlistUpdate
autocmd BufWritePost *.py :TlistUpdate
autocmd BufWritePost *.h :TlistUpdate
autocmd BufWritePost *.c :TlistUpdate

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

hi xMacro ctermfg=magenta cterm=NONE 
hi xOper ctermfg=Red cterm=NONE 

nnoremap <silent> <C-l> :nohl<CR><C-l>
map <F12> :split<CR>
map <F11> :vsplit<CR>
map <F10> :hide<CR>
map <F9>  :TlistToggle<CR>
map <F8>  :map<CR>
map <F7> mzgg.=G`z<CR>
map <F6> :ls<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :call ErrorListToggle()<CR>
map <C-e> :set scrollbind<CR>
map <C-r> :set scrollbind<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
imap <esc>OH <esc>0i
cmap <esc>OH <home>
nmap <esc>OH 0
nmap <esc>OF $
imap <esc>OF <esc>$a
cmap <esc>OF <end>

function! ErrorListToggle()   
    if g:syntastic_auto_loc_list == 1
        let g:syntastic_always_populate_loc_list = 0
        let g:syntastic_auto_loc_list = 0
    else
        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
    endif    
endfunction

