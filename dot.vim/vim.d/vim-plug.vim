
""" vim-plug:
"""     https://github.com/junegunn/vim-plug
"""
""" vim-plug: begin


"call plug#begin('~/.vim/bundle')

"""
""" Mv: my plugins config
"""

call plug#begin('~/work/vim2020/dot.vim/vim.d/bundle')

for f in split(glob('~/work/vim2020/dot.vim/vim.d/config/*.vim'), '\n')
  exe 'source' f
endfor

call plug#end()

