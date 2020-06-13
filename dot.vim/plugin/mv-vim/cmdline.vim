
" vim:ft=vim:set foldlevel=9:

  " Commandline:
  " ============

  " show pressed keys or visual selection in command line
  set showcmd             

  " command line completion:
  set wildmenu
  set wildchar=<Tab>
  set wildmode=longest:list,full
  set wildmode=list
" set wildoptions=tagfile
  

  " command line window:
  "   :help usr_20.txt
  "   :help cmdline.txt
  "
  "   q: - history command
  "   q/ - history search
  "   q? - history search
  "   : CTRL-F
  "   / CTRL-F
  "   ? CTRL-F
  set cmdwinheight=15     " initial height


  " Command Line
  " =======================
  " Saving from pressing SHIFT
  " :w => \w
  nnoremap \ :


  " CTRL-g shows filename and buffer number, too.
  " :help CTRL-G
  nnoremap <C-g> 2<C-g>

  " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
  nnoremap <leader>cd  :cd  <C-R>=expand("%:p:h")<CR>
  nnoremap <leader>lcd :lcd <C-R>=expand("%:p:h")<CR>


  " Cmd: Shortcuts
  " ==============

  nnoremap <leader>q  :q
  nnoremap <leader>q1 :q!
  nnoremap <leader>qa :qall!
  nnoremap <leader>w  :w
  nnoremap <leader>W  :w
  nnoremap <leader>wa :wa<CR>
  nnoremap <leader>WA :wa<CR>
  nnoremap <leader>wq :wq!<CR>
  nnoremap <leader>WQ :wq!<CR>

" nnoremap <leader>ws :w !sudo tee % >/dev/null<CR>
" nnoremap <leader>WS :w !sudo tee % >/dev/null<CR>
" cmap w!! w !sudo tee % >/dev/null<CR>
"
  nnoremap <leader>sa :browse confirm saveas

  " reload current buffer
  nmap <leader>so   :so %


  " Editing: vimrc
  " =======================

  nnoremap <leader>ev :edit $MYVIMRC<CR>
  nnoremap <leader>ed :edit $HOME/.vim/vim.d/<CR>


