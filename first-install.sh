#!/bin/bash
#
# Marcus Vinicius Ferreira  ferreira.mv[ at ]gmail.com
#
# mv/vim (git repos) install
#
#    git clone git://github.com/mv/vim mv-vim
#


DIR=$( dirname $0 )

## Cannot run outside my own dir
[ ! -f ./$( basename $0 ) ] && {
    echo
    echo "Error: $0 must be execute inside $DIR"
    echo
    exit 2
}

## HOME setup
ln -nsf ${PWD}/dot.vimrc       ~/.vimrc
ln -nsf ${PWD}/dot.gvimrc      ~/.gvimrc
ln -nsf ${PWD}/dot.vim         ~/.vim

## Vundle setup
mkdir -p ~/.vim/bundle
if [ -d ~/.vim/bundle/vundle ]
then
    cd ~/.vim/bundle/vundle && git pull
else
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

## Pathogen setup
mkdir -p ~/.vim/autoload
if [ ! -f ~/.vim/autoload/pathogen.vim ]
then
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

## Install plugins
vim +BundleInstall +qall

# vim:ft=sh:

