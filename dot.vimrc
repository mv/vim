" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since 2008/12
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

"""
""" Pathogen: fixing runtimepath
"""
"call pathogen#infect()


"""
""" Mv: what is mine begins here
"""
syntax on
filetype indent plugin on
set paste               " terminal: do the right thing when executing paste
set verbose=0           " Debug: vim +V 9 ...

" just in case...
let mapleader=","

"""
""" Rules: editing rules
"""     case/indent/tab-stops/brackets/wrapping
"""
source ~/.vim/vim.d/text_rules.vim

"""
""" Settings:
"""
source ~/.vim/vim.d/settings.vim
source ~/.vim/vim.d/ftypes.vim

"""
""" Options:
"""
source ~/.vim/vim.d/vim_ui.vim
source ~/.vim/vim.d/status_line.vim
source ~/.vim/vim.d/folding.vim

"""
""" Visual: buffers/windows
"""
source ~/.vim/vim.d/buf.vim
source ~/.vim/vim.d/win.vim

"""
""" Shortcuts: mapleader/mappings/commands
"""
source ~/.vim/vim.d/commands.vim
source ~/.vim/vim.d/mappings.vim

"""
""" VimCode: my snippets
"""
source ~/.vim/vim.d/vim_code.vim

"""
""" Plugins: activate bundle/ stuff
"""
source ~/.vim/vim.d/plugins.vim

"""
""" Terminal Fix: force correct copy/paste
"""
set paste
colorscheme wombat256mod

" vim: set foldmarker={{{,}}} foldlevel=9 nospell:

