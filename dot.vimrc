" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     since 2008/12
"

" Bundle setup {{{
" ================

    set nocompatible
    filetype off                   " required!

    set runtimepath+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required!
    Bundle 'gmarik/vundle'

" }}}
" Bundles      {{{
" ================

    " Bundles: BEGIN

    """
    """ Github
    """

    " Themes
    Bundle 'mv/vim-ir_black3'
    Bundle 'tpope/vim-vividchalk'

    " Syntax
    Bundle 'uggedal/puppet-vim'

    """
    """ www.vim.org/scripts
    """

    " Themes
    Bundle 'peaksea'
    Bundle 'wombat256.vim'
    Bundle 'molokai'

    " syntax
    Bundle 'pf.vim'
    Bundle 'JSON.vim'

    " Bundles: END

" }}}

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
source ~/.vim/vim.d/text-rules.vim

"""
""" Settings:
"""
source ~/.vim/vim.d/settings.vim
source ~/.vim/vim.d/filetypes.vim

"""
""" Shortcuts: mapleader/mappings/commands
"""
source ~/.vim/vim.d/commands.vim
source ~/.vim/vim.d/mappings.vim

"""
""" Options:
"""
source ~/.vim/vim.d/vim-ui.vim
source ~/.vim/vim.d/status-line.vim
source ~/.vim/vim.d/folding.vim

"""
""" Visual: buffers/windows
"""
source ~/.vim/vim.d/buffers.vim
source ~/.vim/vim.d/windows.vim

"""
""" Plugins: via bundle
"""
source ~/.vim/vim.d/plugins.vim

"""
""" VimCode: snippets
"""
source ~/.vim/vim.d/vim-code.vim

set paste

" vim: set foldmarker={{{,}}} foldlevel=0 nospell:

