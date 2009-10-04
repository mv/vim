#!/bin/bash
#
# Marcus Vinicius Ferreira  ferreira.mv[ at ]gmail.com
#
# mv/vim (git repos) install
#
#    git clone git://github.com/mv/vim mv-vim
#


lnfile() {
    [ -f $2 ] && /bin/rm $2
    ln -s $1 $2              # ln $1 $2
}

lndir() {
    [ -e $2 ] && /bin/rm $2
    ln -s $1 $2
}

DIR=~/Work/mv-vim

lnfile  ${DIR}/dot.vimrc       ~/.vimrc
lnfile  ${DIR}/dot.gvimrc      ~/.gvimrc
lndir   ${DIR}/dot.vim         ~/.vim

