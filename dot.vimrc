" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since   2008-12
"     updated 2017-01
"

"""
""" Vundle: 'Bundle' commands to install vim plugins
"""
set nocompatible
filetype off              " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle. required!
Bundle 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""
""" Pathogen: fixing runtimepath
"""
"call pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""
""" Vundle/Pathogen
"""
syntax on
filetype indent plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""
""" Mv: my settings
"""
for f in split(glob('~/.vim/vim.d/*.vim'), '\n')
  exe 'source' f
endfor

"""
""" Mv: my setting for ftypes
"""
for f in split(glob('~/.vim/vim.d/ftypes/*.vim'), '\n')
  exe 'source' f
endfor

"""
""" Mv: local settings for plugins
"""
for f in split(glob('~/.vim/vim.d/plugins/*.vim'), '\n')
  exe 'source' f
endfor


"""
""" Mv: just in case...
"""
"2017: set paste               " terminal: do the right thing when executing paste
"2017: set verbose=0           " Debug: vim +V 9 ...


"""
""" Settings:
"""
"2017: source ~/.vim/vim.d/settings.vim   " !!!!
"2017: source ~/.vim/vim.d/text_rules.vim
"2017: source ~/.vim/vim.d/vim_ui.vim
"2017: source ~/.vim/vim.d/ftypes.vim

"""
""" Options:
"""
"2017: source ~/.vim/vim.d/folding.vim
"2017: source ~/.vim/vim.d/buf.vim
"2017: source ~/.vim/vim.d/win.vim
"2017: source ~/.vim/vim.d/status_line.vim

"""
""" Shortcuts: mapleader/mappings/commands
"""
"2017: source ~/.vim/vim.d/commands.vim
"2017: source ~/.vim/vim.d/mappings.vim   " !!!!

"""
""" VimCode: my snippets
"""
"2017: source ~/.vim/vim.d/vim_code.vim

"""
""" Plugins: activate bundle/ stuff
"""
"2017: source ~/.vim/vim.d/plugins.vim

"""
""" Terminal Fix: force correct copy/paste
"""
"2017: set paste



"
" vim: set foldmarker={{{,}}} foldlevel=9 nospell:

