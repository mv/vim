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
source ~/.vim/vim.d/config/buf.vim
source ~/.vim/vim.d/config/commands.vim
source ~/.vim/vim.d/config/compatible.vim.disable
source ~/.vim/vim.d/config/folding.vim
source ~/.vim/vim.d/config/ftypes.vim
source ~/.vim/vim.d/config/mappings.vim
source ~/.vim/vim.d/config/plugins.vim
source ~/.vim/vim.d/config/settings.vim
source ~/.vim/vim.d/config/status_line.vim
source ~/.vim/vim.d/config/text_rules.vim
source ~/.vim/vim.d/config/vim_code.vim
source ~/.vim/vim.d/config/vim_ui.vim
source ~/.vim/vim.d/config/win.vim


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


