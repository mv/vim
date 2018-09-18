
" vim:ft=vim:set foldlevel=9:

"""
""" Mv: Status line Highlight
"""

Plug 'vim-scripts/StatusLineHighlight'
    " Turn it off:
    " let g:loaded_StatusLineHighlight = 1

function! StatusLineHL()

    " Text Buffer
    highlight StatusLine               guifg=white      guibg=darkcyan  gui=italic ctermfg=black    ctermbg=darkcyan  cterm=NONE
    highlight StatusLineNC             guifg=black      guibg=gray      gui=NONE   ctermfg=blue     ctermbg=darkgray  cterm=NONE

    highlight StatusLineModified       guifg=white      guibg=DarkRed   gui=bold   ctermfg=white    ctermbg=DarkRed   cterm=NONE
    highlight StatusLineModifiedNC     guifg=DarkRed    guibg=gray      gui=bold   ctermfg=DarkRed  ctermbg=gray      cterm=NONE

    " Help buffer
    highlight StatusLineSpecial        guifg=lightgreen guibg=darkgreen gui=bold   ctermfg=yellow   ctermbg=darkgreen cterm=NONE
    highlight StatusLineSpecialNC      guifg=lightgreen guibg=darkgreen gui=bold   ctermfg=yellow   ctermbg=darkgreen cterm=NONE

    " :pedit/psearch/ptag
    highlight StatusLinePreview        guifg=white      guibg=#008080   gui=bold   ctermfg=white    ctermbg=cyan      cterm=NONE
    highlight StatusLinePreviewNC      guifg=black      guibg=#008080   gui=bold   ctermfg=black    ctermbg=cyan      cterm=NONE

    " others...
    highlight StatusLineReadonly       guifg=white      guibg=darkgreen gui=bold   ctermfg=white    ctermbg=darkgreen cterm=NONE
    highlight StatusLineReadonlyNC     guifg=white      guibg=darkgreen gui=bold   ctermfg=white    ctermbg=darkgreen cterm=NONE
    highlight StatusLineUnmodifiable   guifg=green      guibg=darkgreen gui=bold   ctermfg=green    ctermbg=darkgreen cterm=NONE
    highlight StatusLineUnmodifiableNC guifg=green      guibg=darkgreen gui=bold   ctermfg=green    ctermbg=darkgreen cterm=NONE

endfunction

call StatusLineHL()

nnoremap <Leader>sl :call StatusLineHL()<CR>

