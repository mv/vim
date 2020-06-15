
""" vim-plug:
"""     https://github.com/junegunn/vim-plug
"""
""" vim-plug: begin


"call plug#begin('~/.vim/bundle')

"""
""" Mv: my plugins config
"""

let dir = fnamemodify(resolve(expand(myvimrc)), ":p:h") . "/vim-plug.d"

call plug#begin( dir . '/bundle')

for f in split(glob( dir . '/config/*.vim'), '\n')
  execute 'source' f
endfor

call plug#end()

