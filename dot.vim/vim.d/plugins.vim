
" Plugins
" ================
    " Tip:
    "     scriptnames     " List all sourced scripts

    """
    """ Mine
    """
"   Bundle 'mv/mv-snipmate-snippets'
"   Bundle 'mv/mv-vim-puppet'

    """
    """ Themes
    """
    Bundle 'mv/vim-ir_black3'
    Bundle 'wombat256.vim'
    Bundle 'molokai'
    Bundle 'junegunn/seoul256.vim'

    """
    """ Extra: Syntaxes
    """
    Bundle "pf.vim"
    Bundle "vim-scripts/iptables"
    Bundle "mv/mv-vim-monit"
    Bundle "mv/mv-vim-nagios"
    Bundle "mv/mv-vim-nginx"


    """
    """ Extra: Essentials
    """
    Bundle 'bufexplorer.zip'
    "      'bufexplorer.zip'                   {{{

        " ,be / ,bv / ,bs
        let g:bufExplorerReverseSort     = 0
        let g:bufExplorerShowUnlisted    = 1    " Do not show unlisted buffers.
        let g:bufExplorerSortBy          ='fullpath' " name,number,mru,fullpath,extension
        let g:bufExplorerShowDirectories = 1    " Show directories.
        let g:bufExplorerFindActive      = 0    " Do not go to active window.
        let g:bufExplorerShowDirectories = 0    " Don't show directories.
        let g:bufExplorerSplitBelow      = 1    " Split new window below current.
        let g:bufExplorerSplitRight      = 1    " Split right.

    " }}}

    Bundle 'matchit.zip'

    Bundle 'mileszs/ack.vim'
    Bundle 'rking/ag.vim'
    "      'rking/ag.vim'                      {{{

      " let g:agprg="<custom-ag-path-goes-here> --column"

    " }}}

    Bundle 'elzr/vim-json'
    "      'elzr/vim-json'                     {{{
        let g:vim_json_syntax_conceal=0
        set conceallevel=0
    " }}}

    """
    """ Best: of the best
    """
"   Bundle 'wincent/Command-T'
    "      'wincent/Command-T'                 {{{
        let g:CommandTMaxFiles=20000
        let g:CommandTMinHeight=5

        let g:CommandTAcceptSelectionSplitMap='<D-j>'
        let g:CommandTAcceptSelectionVSplitMap='<D-k>'
        let g:CommandTAcceptSelectionTabMap='<D-CR>'

"       nnoremap <silent> <Leader>t :CommandT<CR>
"       nnoremap <silent> <Leader>b :CommandTBuffer<CR>
        nnoremap <silent> <Leader>ctf :CommandTFlush
        nnoremap <silent> <Leader>ctj :CommandTJump<CR>
        nnoremap <silent> <Leader>ctag :CommandTTag<CR>
    " }}}

    Bundle 'sjl/gundo.vim'
    Bundle 'Valloric/YouCompleteMe'

    Bundle 'kien/ctrlp.vim'
    "      'kien/ctrlp.vim'                    {{{

    " Remember: opening files
    "   C-P +
    "     C-s split  (down)
    "       v vsplit (right)
    "       t tabnew
"   let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
    let g:ctrlp_match_window = 'top,order:ttb,min:1,max:50,results:50'

    nnoremap <leader>w   :w<CR>
    nnoremap <leader>p   :CtrlP<CR>
    nnoremap <leader>pb  :CtrlPBuffer<CR>
    nnoremap <leader>pm  :CtrlPMRU<CR>
    nnoremap <leader>pcc :CtrlPClearCache<CR>

    " }}}



    """
    """ Essentials: Dr. Chip's
    """
    Bundle 'AnsiEsc.vim'
    Bundle 'Align'
    "      'Align'                             {{{
        let g:DrChipTopLvlMenu         = "Plugin."
        let g:alignnoremaps_euronumber = 1
    " }}}

    """
    """ Essentials: Takeshi Nishida
    """
    Bundle 'L9'
    Bundle 'FuzzyFinder'
    "      'FuzzyFinder'                       {{{

    " Remember: opening files
    "   ,ff +
    "     C-j split  (down)
    "       k vsplit (right)
    "       l tabnew

"   let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
        let g:fuf_modesDisable = []
        let g:fuf_mrufile_maxItem = 400
        let g:fuf_mrucmd_maxItem = 400

"       let g:fuf_coveragefile_globPatterns = [ './**/', '**/.*' ]

        let g:fuf_abbrevMap = {
            \   "^mod:" : [
            \     "modules/**/",
            \     "modules/**/manifests/*",
            \     "modules/**/manifests/**/",
            \   ],
            \   "^file:" : [
            \     "~/work/nu/repo/cookbooks/**/files/",
            \     "~/work/nu/repo/cookbooks/**/templates/",
            \     "~/work/nu/repo/pkg-build/**/",
            \   ],
            \ }

        noremap  <leader>ff   :FufFile **/<CR>
        noremap  <leader>fcf  :FufCoverageFile<CR>

        noremap  <leader>fb   :FufBuffer      <CR>
        noremap  <leader>fd   :FufDir         <CR>

        noremap  <leader>fc   :FufMruCmd    <CR>
        noremap  <leader>fh   :FufHelp      <CR>
        noremap  <leader>fj   :FufJumpList  <CR>
        noremap  <leader>fl   :FufLine      <CR>
        noremap  <leader>fq   :FufQuickfix  <CR>

        noremap  <leader>fcl  :FufChangeList<CR>
        noremap  <leader>fmc  :FufMruCmd    <CR>
        noremap  <leader>fmf  :FufMruFile   <CR>
        noremap  <leader>frc  :FufRenewCache<CR>

        noremap  <leader>fbf  :FufBookmarkFile    <CR>
        noremap  <leader>fbfa :FufBookmarkFileAdd <CR>
        noremap  <leader>fbd  :FufBookmarkDir     <CR>
        noremap  <leader>fbda :FufBookmarkDirAdd  <CR>

        " noremap  <leader>fbt  :FufBufferTag     <CR>
        " noremap  <leader>ft   :FufTag           <CR>
        " noremap  <leader>ftf  :FufTaggedFile    <CR>

    " }}}

 "  Bundle 'AutoComplPop'
    "      'AutoComplPop'                      {{{

    " Disable AutoComplPop.
"       let g:acp_enableAtStartup        = 0

        let g:acp_mappingDriven          = 0
        let g:acp_ignorecaseOption       = 1
        let g:acp_behaviorKeywordLength  = 2
        let g:acp_behaviorFileLength     = 0

        let g:acp_behavior = {'repeat': 1}

        " nnoremap <leader>ae :AcpEnable <CR>
        " nnoremap <leader>ad :AcpDisable <CR>
        " nnoremap <leader>al :AcpLock <CR>
        " nnoremap <leader>au :AcpUnlock <CR>

    " }}}


    """
    """ Essentials: Tim Pope
    """
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-fugitive'
    "      'tpope/vim-fugitive'                {{{

        " git add %
        map <leader>gw :Gwrite
        " git checkout % (revert to previous checked version)
        map <leader>gr :Gread

        " git mv %
        map <leader>gmv :Gmove
        " git rm %
        map <leader>grm :Gremove

        map <leader>gd :Gdiff<CR>
        map <leader>gs :Gstatus<CR>

        map <leader>gc :Gcommit<CR>
        map <leader>gb :Gblame<CR>

        " on diff
        map <leader>dg :diffget<CR>
        map <leader>dp :diffput<CR>

        " wipeout fugitive extra buffers
        autocmd BufReadPost fugitive://* set bufhidden=delete

    " }}}

    " gc/gcc/gcap:
    Bundle 'tpope/vim-commentary'

    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-speeddating'
    Bundle 'tpope/vim-unimpaired'

    " ft:markdown
    Bundle 'tpope/vim-markdown'

    " ft:mkd
    Bundle 'nelstrom/vim-markdown-preview'
    "      'nelstrom/vim-markdown-preview'     {{{
    nnoremap <silent> <Leader>mm :Mm<CR>
    "
    "
    " }}}


    """
    """ Testing.....
    """
    "      'SearchComplete'                    {{{
        " Turn it off:
        " let loaded_search_complete = 1
    " }}}

    """
    """ Off...
    """
    " textformat.vim                           {{{
        " Turn it off:
        " let g:loaded_textformat = 1
    " }}}
    " RainbowPlugin                            {{{
        " Turn it off:
        " let g:loaded_Rainbow = 1
    " }}}


" vim: set foldlevel=9

