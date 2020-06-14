" vim:ft=vim:set foldlevel=9:


Plug 'vim-scripts/AutoComplPop'

  " good old, simple...
  " text only...

  map <leader>ace :AcpEnable
  map <leader>acd :AcpDisable

  " 0: disable
  " 1: enable
  let g:acp_enableAtStartup = 1

  let g:acp_behaviorKeywordLength = 2

" let g:acp_behaviorFileLength = 0
  let g:acp_behaviorRubyOmniMethodLength = -1
  let g:acp_behaviorPythonOmniLength = -1
  let g:acp_behaviorPerlOmniLength = -1
  let g:acp_behaviorXmlOmniLength = -1
" let g:acp_behaviorHtmlOmniLength = 0
" let g:acp_behaviorCssOmniPropertyLength = -1


