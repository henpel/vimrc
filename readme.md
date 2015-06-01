This configuration expects:

* https://github.com/tpope/vim-pathogen
* https://github.com/scrooloose/syntastic
* http://vim-taglist.sourceforge.net
* https://github.com/scrooloose/nerdtree

Copy pathogen.vim into ~/.vim/autoload and all other into ~/.vim/bundle.

Bindings:

Function|key|command
---------------------------------------------------------------
Toggle nerdtree|\<F2\>|NERDTreeToggle<CR>

Toggle error list <F3>          :call ErrorListToggle()<CR>
Show buffers      <F5>        * :buffers<CR>:buffer<Space>
ls                <F6>          :ls<CR>
Fix indent        <F7>          mzgg.=G`z<CR>
Show mappings     <F8>          :map<CR>
Toggle taglist    <F9>          :TlistToggle<CR>
Hide              <F10>         :hide<CR>
Vertical split    <F11>         :vsplit<CR>
Horizontal split  <F12>         :split<CR>
