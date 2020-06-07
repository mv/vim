" vim:ft=vim:set foldlevel=9:
"
" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since   2008-12
"     updated 2017-01
"     updated 2017-09
"     updated 2018-09
"     updated 2020-06
"


""" temp fix
let loaded_highlight="1"

""" Start: workdir
source $VIMRUNTIME/defaults.vim
set runtimepath=~/work/vim2020/dot.vim,$VIMRUNTIME

set nocompatible      " vim useful stuff
set nohlsearch        " keep off last used search pattern


""" Custom: Mv

" set backup
" set undofile

source ~/work/vim2020/dot.vim/plugin/20-vim-plug/vim-plug-load.vim

"""
""" Settings:
"""

"ilent! colorscheme desert
"ilent! colorscheme evening
silent! colorscheme wombat256mod

