#!/bin/bash -x

## vim-plug: bootstrap
curl \
  --create-dirs \
  -fLo ~/.vim/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# vim-plug from comandline
vim +PlugInstall +qall


