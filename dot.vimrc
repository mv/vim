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
""" Mv: my vim settings
"""
source ~/.vim/vim.d/settings/buf.vim
source ~/.vim/vim.d/settings/commands.vim
source ~/.vim/vim.d/settings/compatible.vim.disable
source ~/.vim/vim.d/settings/folding.vim
source ~/.vim/vim.d/settings/ftypes.vim
source ~/.vim/vim.d/settings/mappings.vim
source ~/.vim/vim.d/settings/plugins.vim
source ~/.vim/vim.d/settings/settings.vim
source ~/.vim/vim.d/settings/text_rules.vim
source ~/.vim/vim.d/settings/vim_code.vim
source ~/.vim/vim.d/settings/vim_ui.vim
source ~/.vim/vim.d/settings/win.vim


"""
""" Mv: my ftypes
"""
for f in split(glob('~/.vim/vim.d/filetypes/*.vim'), '\n')
  exe 'source' f
endfor

"""
""" Mv: my plugins config
"""

for f in split(glob('~/.vim/vim.d/config/*.vim'), '\n')
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


