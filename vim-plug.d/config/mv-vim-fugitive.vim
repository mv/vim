
" vim:ft=vim:set foldlevel=9:

Plug 'tpope/vim-fugitive'
   " 'tpope/vim-rhubarb'   # hub: Github
  
  " git add %
" map <leader>gw :Gwrite
  " git checkout % (revert to previous checked version)
" map <leader>gr :Gread

  " git mv %
" map <leader>gmv :Gmove
  " git rm %
" map <leader>grm :Gremove

" map <leader>gd :Gdiff<CR>
" map <leader>gs :Gstatus<CR>

" map <leader>gc :Gcommit<CR>
" map <leader>gb :Gblame<CR>

  " on diff
" map <leader>dg :diffget<CR>
" map <leader>dp :diffput<CR>

  " wipeout fugitive extra buffers
  autocmd BufReadPost fugitive://* set bufhidden=delete


