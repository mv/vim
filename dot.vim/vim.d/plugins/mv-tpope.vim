"
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Tim Pope
    """

    " gc/gcc/gcu/gcap: <no leader>
    Plugin 'tpope/vim-commentary'

    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'

    " :help unimpaired
    Plugin 'tpope/vim-unimpaired'

    " Plugin 'tpope/vim-speeddating'
        let g:speeddating_no_mappings = 0

    Plugin 'tpope/vim-eunuch'
    " - Remove    : Delete a buffer and the file on disk simultaneously.
    " - Unlink    : Like :Remove, but keeps the now empty buffer.
    "
    " - Move      : Rename a buffer and the file on disk simultaneously.
    " - Rename    : Like :Move, but relative to the current file's containing directory.
    "
    " - Chmod     : Change the permissions of the current file.
    " - Mkdir     : Create a directory, defaulting to the parent of the current file.
    " - Wall      : Write every open window. Handy for kicking off tools like guard.
    " - SudoWrite : Write a privileged file with sudo.
    " - SudoEdit  : Edit a privileged file with sudo.
    "
    " - Find      : Run find and load the results into the quickfix list.
    " - Locate    : Run locate and load the results into the quickfix list.
    "
    " File type detection for sudo -e is based on original file name.
    " New files created with a shebang: line are automatically made executable.
    " New init scripts are automatically prepopulated with /etc/init.d/skeleton.


    " Plugin 'tpope/vim-endwise'

    " Plugin 'tpope/vim-projectionist'

    " Plugin 'tpope/vim-scriptease'
    " Plugin 'tpope/vim-sensible'


