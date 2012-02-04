" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     based on http://vi-improved.org/vimrc.php
"     2008/12
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

"   Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

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

    """
    """ Others
    """

    " Bundles: END

" }}}

syntax on
filetype indent plugin on
set paste               " terminal: do the right thing when executing paste
set verbose=0           " Debug


"""
""" Settings:
"""
source ~/.vim/vim.d/settings.vim
source ~/.vim/vim.d/filetypes.vim

"""
""" Rules:
"""     case/indent/tab-stops/brackets/vimgrep/wrapping
"""
source ~/.vim/vim.d/text-rules.vim

"""
""" Options:
"""
source ~/.vim/vim.d/vim-ui.vim
source ~/.vim/vim.d/status-line.vim
source ~/.vim/vim.d/folding.vim

"""
""" Shortcuts: mapleader/mappings/commands
"""
source ~/.vim/vim.d/commands.vim
source ~/.vim/vim.d/mappings.vim

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


" vim: set foldmarker={{{,}}} foldlevel=0 nospell:

