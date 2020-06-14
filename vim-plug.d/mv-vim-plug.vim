
""" vim-plug:
"""     https://github.com/junegunn/vim-plug
"""
""" vim-plug: begin


"call plug#begin('~/.vim/bundle')

"""
""" Mv: my plugins config
"""

call plug#begin('~/work/vim2020/vim-plug.d/bundle')

for f in split(glob('~/work/vim2020/vim-plug.d/config/*.vim'), '\n')
  execute 'source' f
endfor

call plug#end()

