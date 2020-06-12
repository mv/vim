
" vim:ft=vim:set foldlevel=9:

" Mappings
" ========
    " Tip: D  : command key
    "      D-S: command+shift key
    "      M  : alt key (meta-key)
    "      M-S: alt+shift key

"   set timeoutlen=100     " 1000: 1s. 100: 1/10s
"   set ttimeoutlen=-1     " back to default

"   set timeoutlen=2000    " Wait 2 seconds before timing out a mapping
"   set ttimeoutlen=100    " and only 100 ms before timing out on a keypress.

    let mapleader=","

    " GUI
    " ======================
    " linenumber on/off
    nnoremap <leader>nu  :set invnumber<CR>

    " relativenumber on/off
    nnoremap <leader>rnu :set invrnu   <CR>

    " set cursorcolumn/nocursorcolumn
    nnoremap <leader>cuc :set invcuc   <CR>

    " invisibles List on/off
    nnoremap <leader>l   :set invlist  <CR>



    " Using marks
    " =======================

    " ` is more useful than ' but less accessible.
    " nnoremap ' `
    " nnoremap ` '


    " Copy/paste registers
    " =======================

    " (Correcting my international keyboard)
"   nnoremap \ "

    " allow deleting selection without updating the clipboard (yank buffer)
    " Ref: http://www.pixelbeat.org/settings/.vimrc
    " vnoremap x "_x
    " vnoremap X "_X

    " Yank/paste to/from the OS clipboard with ,y and ,p
"   nnoremap <leader>p "*p
"   nnoremap <leader>P "*P
"   nnoremap <leader>y "*y
"   nnoremap <leader>yy "*yy




