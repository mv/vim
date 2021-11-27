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

source $VIMRUNTIME/defaults.vim

let mapleader=","


""" Start:
""" ~/
"""   .vimrc -> workdir/vimrc    [via ln -s]
""" workdir/                     [git clone]
"""   dot.vim/                   [via runtime]
"""   vim-plug.d/                [via source + loop]
"""   vimrc                      [real .vimrc]

" Testing: $ vim -u myvimrc
" let myvimrc = split(split(execute('scriptnames'), "\n")[0], ": ")[1]

let myvimrc = "~/.vimrc"
let workdir = fnamemodify(resolve(expand(myvimrc)), ":p:h")
execute "set runtimepath=".workdir."/dot.vim"   .",$VIMRUNTIME"
execute 'source'          .workdir."/vim-plug.d"."/mv-vim-plug.vim"
unlet workdir
unlet myvimrc

"
set nu
set nowrap sidescroll=1         " [no] wrap long lines

