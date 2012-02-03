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
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'mattn/zencoding-vim'
    Bundle 'uggedal/puppet-vim'

"   Bundle 'tpope/vim-fugitive'
"   Bundle 'tpope/vim-rails.git'

    " Themes
    Bundle 'tpope/vim-vividchalk'
    Bundle 'mv/vim-ir_black3'

"   Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

    """
    """ www.vim.org/scripts
    """
    " Takeshi Nishida
    Bundle 'L9'
    Bundle 'FuzzyFinder'
    Bundle 'AutoComplPop'

    Bundle 'bufexplorer.zip'
    Bundle 'kwbdi.vim'

    " Themes
    Bundle 'peaksea'
    Bundle 'wombat256.vim'

    " syntax
    Bundle 'pf.vim'
    Bundle 'JSON.vim'

    """
    """ Others
    """
"   Bundle 'git://git.wincent.com/command-t.git'

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
source ~/.vim/vim.d/vim-ui.vim

"""
""" Rules: case/indent/tab-stops/brackets/vimgrep
"""
source ~/.vim/vim.d/coding-rules.vim
source ~/.vim/vim.d/filetypes.vim

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
"#source ~/.vim/vim.d/plugins.vim

"""
""" VimCode: snippets
"""
"#source ~/.vim/vim.d/vim-code.vim


" vim: set foldmarker={{{,}}} foldlevel=1 nospell:

