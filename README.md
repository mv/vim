
## My Vim Files

#### Install

All plugins are enabled via vundle.

To install:

> bash first-install.sh

It will replace `~/.vim` with a symbolic link to `dot.vim` dir.


#### Files

Main `.vimrc` is the shortest possible: just enough to setup `vundle`
and call all other settings.

Remaining settings are in files inside `.vim/vim.d` directory.

    mv-vim
      +- dot.vim
      |   +- bundle             # Vundle plugins
      |   +- plugin             # standalone plugins
      |   +- syntax             # standalone syntax files
      |   +- vim.d              # my settings
      |       +- ftypes         # my local ftype settings
      |       +- plugins        # my local plugins settings
      +- first-install.sh       # overwrites ~/.vim
      +- vim-vundle-install.sh  # calls Vundle install in commandline


#### MacVim

Some plugins do need python and lua enabled in MacVim. If you are using
homebrew:

    brew install macvim --with-lua --with-python3 --with-cscope


Mv


