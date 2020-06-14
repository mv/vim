
" vim:ft=vim:set foldlevel=9:

"""
""" Tim Pope
"""

" Not anymore...
" ==============
" Plug 'tpope/vim-sensible'	" defaults
" Plug 'tpope/vim-vinegar'      " netrw '-' 
" Plug 'tpope/vim-sleuth'	" auto set ts,sts,sw,etab
" Plug 'tpope/vim-ragtag'       " <C-X> markup addons
" Plug 'tpope/vim-git'          " ft-gitcommit-plugin, ft-gitrebase-plugin

" Review...
" =========
" vim-sexp
" jdaddy
" tbone: tmux
" Plug 'tpope/vim-dispatch'     " :Dispatch, :Make, :Start
" Plug 'tpope/vim-repeat'       " '.'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-speeddating'  " {count}<C-A> / {count}<C-X>
" Plug 'tpope/vim-surround'


  Plug 'tpope/vim-capslock'   
    " <C-L> : capslock in insert mode
    " <C-G>c: ...

  Plug 'tpope/vim-commentary'   
    " [count]gcc
    " gc{motion}: gcj gc4j gc4k
    " gcu       : comment block adjancent
    " [range]Commentary:

  Plug 'tpope/vim-unimpaired'   
    " :help unimpaired          " >p >P : paste reindenting  
    " [b ]b : buffer            " <p <P : paste reindenting  
    " [f ]f : file              " =p =P : paste reindenting  
    " [q ]q : quickfix          "                            
    " [t ]t : tag               " [x [xx : XML encode/decode 
    " [space : insert line      " [u [uu : URL encode/decode 
    " [e     : moveline         " [y [yy : C   encode/decode 
    "

  Plug 'tpope/vim-characterize' 
    " ga: い　き　気

  Plug 'tpope/vim-eunuch'
    " :Remove    - Delete a buffer and the file on disk simultaneously.
    " :Unlink    - Like :Remove, but keeps the now empty buffer.
    "
    " :Move      - Rename a buffer and the file on disk simultaneously.
    " :Rename    - Like :Move, but relative to the current file's containing dir
    "
    " :Chmod     - Change the permissions of the current file.
    " :Mkdir     - Create a dir, defaulting to the parent of the current file.
    " :Wall      - Write every open window. Handy for kicking off tools like guard.
    " :SudoWrite - Write a privileged file with sudo.
    " :SudoEdit  - Edit a privileged file with sudo.
    "
    " :Find      - Run find and load the results into the quickfix list.
    " :Locate    - Run locate and load the results into the quickfix list.
    "
    " File type detection for sudo -e is based on original file name.
    " New files created with a shebang: line are automatically made executable.
    " New init scripts are automatically prepopulated with /etc/init.d/skeleton.

  Plug 'tpope/vim-scriptease'
    " :Verbose	   - :verbose output into preview window
    " :Scriptnames - :scriptnames output into preview window
    " :Time        - measure command time execution
    " zS           - show active syntax highlight under word

  Plug 'tpope/vim-obsession'	" :Obsess  -  mksession...
  autocmd BufEnter * let &titlestring=expand("%:p")." - ".ObsessionStatus()  
    

