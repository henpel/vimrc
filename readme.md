# Preconditions

* https://github.com/tpope/vim-pathogen
* https://github.com/scrooloose/syntastic
* http://vim-taglist.sourceforge.net
* https://github.com/scrooloose/nerdtree

# Installation
* Copy pathogen.vim into ~/.vim/autoload and all other into ~/.vim/bundle.
* mkdir ~/.vim/backup && mkdir ~/.vim/swap

# Bindings list

Function|key|command
--------|---|---------------------------------------------------
Toggle nerdtree|\<F2\>|:NERDTreeToggle\<CR\>
Toggle error list|\<F3\>|:call ErrorListToggle()\<CR\>
Show buffers|\<F5\>|:buffers\<CR\>:buffer\<space\>
Fix indent|\<F7\>|mzgg.=G`z\<space\>
Show mappings|\<F8\>|:map\<space\>
Toggle taglist|\<F9\>|:TlistToggle\<space\>
Hide|\<F10\>|:hide\<space\>
Vertical split|\<F11\>|:vsplit\<space\>
Horizontal split|\<F12\>|:split\<space\>
