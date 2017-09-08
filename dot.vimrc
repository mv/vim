" vim:ft=vim:set foldlevel=9:
"
" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since   2008-12
"     updated 2017-01
"     updated 2017-09
"

"""  vim-plug
call plug#begin('~/.vim/bundle')

"""
""" Mv: my system settings
"""
for f in split(glob('~/.vim/vim.d/after/*.vim'), '\n')
  exe 'source' f
endfor

"""
""" Mv: my ftypes
"""
for f in split(glob('~/.vim/vim.d/ftplugin/*.vim'), '\n')
  exe 'source' f
endfor

"""
""" Mv: my plugins settings
"""

for f in split(glob('~/.vim/vim.d/my-plugins/*.vim'), '\n')
  exe 'source' f
endfor

call plug#end()


"""
""" Settings:
"""
silent! colorscheme wombat256mod


"""
""" Terminal Fix: force correct copy/paste
"""
"2017: set paste


