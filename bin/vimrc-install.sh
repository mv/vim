#!/bin/bash
#
# Marcus Vinicius Ferreira  ferreira.mv[ at ]gmail.com
#
# mv/vim (git repos) install
#
#    git clone git://github.com/mv/vim mv-vim
#


## Cannot run outside main dir...
[ -f ./bin/$( basename $0 ) ] || {
    echo
    echo "Usage:"
    echo "  bash bin/$(basename $0)"
    echo
    exit 2
}

## Force link
ln -snf ${PWD}/dot.vim ${HOME}/.vim
ln -snf ${PWD}/vimrc   ${HOME}/.vimrc
echo "Linked:"
/bin/ls -l ~/.vimrc
echo

## bundle setup
dir_plugins='./vim-plug.d/bundle'

[ -d ${dir_plugins}/bundle ] || mkdir -p ${dir_plugins}/bundle
[ -d ${dir_plugins}/config ] || mkdir -p ${dir_plugins}/config


# vim:ft=sh:

