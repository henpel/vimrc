# Thing
These instructions installs vim stuff how I'm using it.

# Install Vim
./configure --enable-python3interp=yes --enable-pythoninterp=yes --with-python3-command=python3 --with-python3-config-dir=/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/
make
sudo make install

# Install config
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:henpel/vimrc.git ~/Desktop/workspace/
mkdir ~/.vim/backup && mkdir ~/.vim/swap
echo "so ~/Desktop/workspace/vimrc/.vimrc" > ~/.vimrc
vim -c PluginInstall
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer
```
# Plugins 
 * git@github.com/VundleVim/Vundle.vim.git
 * git@git.wincent.com/command-t.git
 * git@github.com:preservim/nerdtree.git
 * git@github.com/Valloric/YouCompleteMe.git
 * git@github.com/scrooloose/nerdtree
 * git@github.com/vim-scripts/taglist.vim.git

# Other
R.I.P Alexi Laiho 

<3

https://www.youtube.com/watch?v=kceGRU6GEHM&t=621s
