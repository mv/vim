
## My Vim Files

#### Install

All plugins are enabled via vundle.

To install:                             

> bash first-install.sh

It will replace `~/.vim` with a symbolic link to `vimrc` file.


#### Files

Main `.vimrc` is the shortest possible: just enough to find my
settings and setup `VimPlug`.

I have 2 type of settings: 1. the ones for Vim itself, 2. the others specific to the plugins installed.


    mv-vim
      +- dot.vim/               # my hand-made stuff
      |   +- autoload           # bootstrap stuff
      |   +- colors             # standalone theme files
      |   +- help               # standalone help files
      |   +- syntax             # standalone syntax files
      |   +- plugin             #
      |       +- mv-vim         # my system settings
      |       +- ftype          # my ftypes
      |       +- config         # my config for native Vim plugins
      |       +- extras         # standalone scripts
      |
      +- vim-plug.d/            # plugins via vim-plug.d
      |   +- bundle             # installed plugins
      |   +- config             # my plugins config
      |   
      +- bin/                   # bash stuff
          +- plugin-install.sh  # calls VimPlug install in commandline
          +- vimrc-install.sh   # overwrites ~/.vim

Inside `.vimrc` all files from `dot.vim/` are loaded via the command
`runtime`. This will also trigger `autoload/plug.vim` and make `VimPLug`
commands available.

After that, a second `source` command will execute the script that loads all
`VimPLug` plugins.

To check what scripts were loaded:

    # in the shell
    $ gvim --startuptime vim.time.txt

    # inside vim
    :scriptnames
    :Scriptnames   " if you have vim-scriptease installed


#### MacVim

Some plugins do need python and lua enabled in MacVim. If you are using
homebrew:

    brew install macvim --with-lua --with-python3 --with-cscope

Or check for those with

    # in the shell
    $ vim --version

    # inside vim
    :version


## Workflow

Major keytrokes used:

    \       :
    ,sp     split below
    ,vsp    split right
    ,spt    split to new tab
    ,rnu    toogle relative number

    ,ace    Acp enable
    ,acd    Acp disable

    ,be     bufexplorer: in-place
    ,bs     bufexplorer: above
    ,bv     bufexplorer: right

    ,ff     Toggle - CtrlP File
    ,fr     Toggle - CtrlP Root
    ,f.     Toggle - CtrlP ../
    ,fb     Toggle - CtrlP Buffer
    ,fw     Toggle - CtrlP CWD
    ,cc     Toggle - CtrlP Clear Cache
    ,ca     Toggle - CtrlP Clear All Caches

    ,ext    netrw: TabExplore
    ,exl    netrw: LeftExplore


    # vim-commentary
    {Visual}gc
            comment/uncomment by selection - vim-commentary
    gc
    gc{motion}
            comment/uncomment by motion - vim-commentary
    gcc
    [count]gcc
            comment/uncomment by count  - vim-commentary
    gcu
            comment/uncomment adjancent unit - vim-commentary

    {count}<C-A> / {count}<C-X>
            increase/decrease date - vim-speeddating


    # vim-unimpaired
    [f      previous file in dir - TPope's Unimpaired
    ]f      next     file in dir - TPope's Unimpaired

    [b      previous buffer
    ]b      next     buffer

    [n      previous diff mark
    ]n      next     diff mark

    [e      current text line above
    ]e      current text line below
    [Space  insert blank line above
    ]Space  insert blank line below

    [xx  ]xx  encode/decode XML
    [uu  ]uu  encode/decode URL
    [yy  ]yy  encode/decode C String


    # vim-enuch
    :Mkdir     Create a directory, defaulting to the parent of the current file.
    :Move      Rename a buffer and the file on disk simultaneously.
    :Remove    Delete a buffer and the file on disk simultaneously.
    :Rename    Like :Move, but relative to the current file's containing directory.
    :Unlink    Like :Remove, but keeps the now empty buffer.
    :Chmod     Change the permissions of the current file.

    # vim-obsession
    :Obsess[!] Save my current session. `vim -S` to restore.


Mv


