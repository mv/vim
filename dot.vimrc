" vim:ft=vim:set foldlevel=9:
"
" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since   2008-12
"     updated 2017-01
"     updated 2017-09
"     updated 2018-09
"

"""  vim-plug
set nocp
source ~/work/mv-vim/dot.vim/autoload/pathogen.vim
source ~/work/mv-vim/dot.vim/autoload/plug.vim

call plug#begin('~/.vim/bundle')

"""
""" Mv: my vim settings
"""
let loaded_highlight="1"
set runtimepath=~/work/mv-vim/dot.vimrc,$VIMRUNTIME

source ~/work/mv-vim/dot.vim/vim.d/settings/buf.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/commands.vim
"ource ~/work/mv-vim/dot.vim/vim.d/settings/compatible.vim.disable
source ~/work/mv-vim/dot.vim/vim.d/settings/folding.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/ftypes.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/mappings.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/plugins.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/settings.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/text_rules.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/vim_code.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/vim_ui.vim
source ~/work/mv-vim/dot.vim/vim.d/settings/win.vim



"""
""" Mv: my ftypes
"""
for f in split(glob('~/work/mv-vim/dot.vim/vim.d/filetypes/*.vim'), '\n')
  exe 'source' f
endfor

"""
""" Mv: my plugins config
"""

for f in split(glob('~/work/mv-vim/dot.vim/vim.d/config/*.vim'), '\n')
  exe 'source' f
endfor

call plug#end()


"""
""" Settings:
"""
source ~/work/mv-vim/dot.vim/bundle/wombat256.vim/colors/wombat256mod.vim
silent! colorscheme wombat256mod

"""
""" Terminal Fix: force correct copy/paste
"""


