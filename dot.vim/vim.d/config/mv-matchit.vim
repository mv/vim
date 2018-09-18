
" vim:ft=vim:set foldlevel=9:

  """
  """ From: sensible.vim
  """

  " Using matchit from Vim distribution

  " Load matchit.vim, but only if the user hasn't installed a newer version.
  if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
  endif


