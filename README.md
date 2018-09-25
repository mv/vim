
## My Vim Files

#### Install

All plugins are enabled via vundle.

To install:

> bash first-install.sh

It will replace `~/.vim` with a symbolic link to `dot.vim` dir.


#### Files

Main `.vimrc` is the shortest possible: just enough to setup `vundle`
and call all other settings.

Remaining settings are in files inside `.vim/vim.d` directory.

    mv-vim
      +- dot.vim
      |   +- bundle             # Vundle plugins
      |   +- plugin             # standalone plugins
      |   +- syntax             # standalone syntax files
      |   +- vim.d              #
      |       +- config         # my plugins settings
      |       +- filetypes      # my ftypes
      |       +- settings       # my system settings
      +- first-install.sh       # overwrites ~/.vim
      +- vim-vundle-install.sh  # calls Vundle install in commandline


#### MacVim

Some plugins do need python and lua enabled in MacVim. If you are using
homebrew:

    brew install macvim --with-lua --with-python3 --with-cscope


## Workflow

Major keytrokes used:

    ,ap     Toggle - AutoPairs
    ,be     Windows - bufexplorer

    ,fr     Toggle - CtrlP Root
    ,f.     Toggle - CtrlP ../
    ,fb     Toggle - CtrlP Buffer
    ,ff     Toggle - CtrlP File
    ,fw     Toggle - CtrlP CWD
    ,fcc    Toggle - CtrlP Clear Cache
    ,fca    Toggle - CtrlP Clear All Caches

    ,,w     Easymotion
    ,,b     Easymotion
    ,,f     Easymotion

    ,nc     Toggle - NeoComplete
    ,ncc    Toggle - NeoComplete Clean Directory Cache

    ,nn     Toggle - NerdTree
    ,nm     Toggle - NerdTree Mirror

    {Visual}gc
            comment/uncomment by selection - vim-commentary
    gc
    gc{motion}
            comment/uncomment by motion - vim-commentary
    gcc
    gcc[count]
            comment/uncomment by count  - vim-commentary
    gcu
            comment/uncomment adjancent unit - vim-commentary

    {count}<C-A> / {count}<C-X>
            increase/decrease date - vim-speeddating


    [f      previous file in dir - TPope's Unimpaired
    ]f      next     file in dir - TPope's Unimpaired

    [e      current text line above
    ]e      current text line below
    [Space  insert blank line above
    ]Space  insert blank line below

    [n      previous diff mark
    ]n      next     diff mark

    [oc  ]oc  toggle cursorline
    [ou  ]ou  toggle cursorcolumn
    [ox  ]ox  toggle cursorline and cursorcolumn
    [oh  ]oh  toggle hlsearch
    [ol  ]ol  toggle invlist
    [on  ]on  toggle number
    [or  ]or  toggle relativenumber
    [or  ]or  toggle relativenumber

    [xx  ]xx  encode/decode XML
    [uu  ]uu  encode/decode URL
    [yy  ]yy  encode/decode C String


    :Remove    Delete a buffer and the file on disk simultaneously.
    :Unlink    Like :Remove, but keeps the now empty buffer.
    :Move      Rename a buffer and the file on disk simultaneously.
    :Rename    Like :Move, but relative to the current file's containing directory.
    :Chmod     Change the permissions of the current file.
    :Mkdir     Create a directory, defaulting to the parent of the current file.
    :Wall      Write every open window. Handy for kicking off tools like guard.
    :SudoWrite Write a privileged file with sudo.
    :SudoEdit  Edit a privileged file with sudo.
    :Find      Run find and load the results into the quickfix list.
    :Locate    Run locate and load the results into the quickfix list.
    " New files created with a shebang: line are automatically made executable.
    " New init scripts are automatically prepopulated with /etc/init.d/skeleton.




Mv


