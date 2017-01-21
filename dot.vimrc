" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since 2008/12
"     updated 2017/01
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
""" Mv: what is mine begins here
"""
syntax on
filetype indent plugin on
set paste               " terminal: do the right thing when executing paste
set verbose=0           " Debug: vim +V 9 ...

" just in case...
let mapleader=","
colorscheme wombat256mod

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""
""" Rules: editing rules
"""     case/indent/tab-stops/brackets/wrapping
"""
"2017: source ~/.vim/vim.d/text_rules.vim

"""
""" Settings:
"""
"2017: source ~/.vim/vim.d/settings.vim
"2017: source ~/.vim/vim.d/ftypes.vim

"""
""" Options:
"""
"2017: source ~/.vim/vim.d/vim_ui.vim
"2017: source ~/.vim/vim.d/status_line.vim
"2017: source ~/.vim/vim.d/folding.vim

"""
""" Visual: buffers/windows
"""
"2017: source ~/.vim/vim.d/buf.vim
"2017: source ~/.vim/vim.d/win.vim

"""
""" Shortcuts: mapleader/mappings/commands
"""
"2017: source ~/.vim/vim.d/commands.vim
"2017: source ~/.vim/vim.d/mappings.vim

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

" vim: set foldmarker={{{,}}} foldlevel=9 nospell:

