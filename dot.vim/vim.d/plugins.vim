
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
"   Bundle 'mv/vim-ir_black3'
    Bundle 'wombat256.vim'
    Bundle 'molokai'
    Bundle 'junegunn/seoul256.vim'

    """
    """ Extra: Syntaxes
    """
    Bundle 'pf.vim'
    Bundle 'vim-scripts/iptables'
    Bundle 'mv/mv-vim-monit'
    Bundle 'mv/mv-vim-nagios'
    Bundle 'mv/mv-vim-nginx'


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

    Bundle 'kien/ctrlp.vim'
    Bundle 'Valloric/YouCompleteMe'



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

        let g:fuf_modesDisable = []
        let g:fuf_mrufile_maxItem = 400
        let g:fuf_mrucmd_maxItem = 400

"       let g:fuf_coveragefile_globPatterns = [ './**/', '**/.*' ]
"       let g:fuf_abbrevMap = {
"           \   "^mod:" : [
"           \     "modules/**/",
"           \     "modules/**/manifests/*",
"           \     "modules/**/manifests/**/",
"           \   ],
"           \ }

        " 0: partial matching
        " 1: refining matching
"       let g:fuf_fuzzyRefining = 0

        noremap  <leader>fb   :FufBuffer  <CR>
        noremap  <leader>ff   :FufFile **/<CR>
        noremap  <leader>fd   :FufDir     <CR>
        noremap  <leader>fl   :FufLine    <CR>

        noremap  <leader>fh   :FufHelp    <CR>
        noremap  <leader>fj   :FufJumpList<CR>

        noremap  <leader>fmc  :FufMruCmd  <CR>
        noremap  <leader>fmf  :FufMruFile <CR>

        noremap  <leader>fbd  :FufBookmarkDir     <CR>
        noremap  <leader>fbf  :FufBookmarkFile    <CR>
        noremap  <leader>fbda :FufBookmarkDirAdd  <CR>
        noremap  <leader>fbfa :FufBookmarkFileAdd <CR>
        "
        " noremap  <leader>fcf  :FufCoverageFile  <CR>
        " noremap  <leader>fcl  :FufChangeList    <CR>
        " noremap  <leader>fq   :FufQuickfix      <CR>
        "
        " noremap  <leader>fbt  :FufBufferTag     <CR>
        " noremap  <leader>ft   :FufTag           <CR>
        " noremap  <leader>ftf  :FufTaggedFile    <CR>

        " nnoremap <silent> sj     :FufBuffer<CR>
        " nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
        " nnoremap <silent> sK     :FufFileWithFullCwd<CR>
        " nnoremap <silent> s<C-k> :FufFile<CR>
        " nnoremap <silent> sl     :FufCoverageFileChange<CR>
        " nnoremap <silent> sL     :FufCoverageFileChange<CR>
        " nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
        " nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
        " nnoremap <silent> sD     :FufDirWithFullCwd<CR>
        " nnoremap <silent> s<C-d> :FufDir<CR>
        " nnoremap <silent> sn     :FufMruFile<CR>
        " nnoremap <silent> sN     :FufMruFileInCwd<CR>
        " nnoremap <silent> sm     :FufMruCmd<CR>
        " nnoremap <silent> su     :FufBookmarkFile<CR>
        " nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
        " vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
        " nnoremap <silent> si     :FufBookmarkDir<CR>
        " nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
        " nnoremap <silent> st     :FufTag<CR>
        " nnoremap <silent> sT     :FufTag!<CR>
        " nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
        " nnoremap <silent> s,     :FufBufferTag<CR>
        " nnoremap <silent> s<     :FufBufferTag!<CR>
        " vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
        " vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
        " nnoremap <silent> sxxxw  :FufBufferTagWithCursorWord!<CR>
        " nnoremap <silent> s.     :FufBufferTagAll<CR>
        " nnoremap <silent> s>     :FufBufferTagAll!<CR>
        " vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
        " vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
        " nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
        " nnoremap <silent> sg     :FufTaggedFile<CR>
        " nnoremap <silent> sG     :FufTaggedFile!<CR>
        " nnoremap <silent> so     :FufJumpList<CR>
        " nnoremap <silent> sp     :FufChangeList<CR>
        " nnoremap <silent> sq     :FufQuickfix<CR>
        " nnoremap <silent> sy     :FufLine<CR>
        " nnoremap <silent> sh     :FufHelp<CR>
        " nnoremap <silent> se     :FufEditDataFile<CR>
        " nnoremap <silent> sr     :FufRenewCache<CR>
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
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-eunuch'
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
    Bundle 'tpope/vim-speeddating'
    "      'tpope/vim-speeddating'             {{{
        let g:speeddating_no_mappings = 0
    " }}}

    " ft:markdown
    Bundle 'tpope/vim-markdown'

    " ft:mkd
    "undle 'plasticboy/vim-markdown'
    Bundle 'nelstrom/vim-markdown-preview'
    "      'nelstrom/vim-markdown-preview'     {{{
    nnoremap <silent> <Leader>mm :Mm<CR>
    "
    "
    " }}}

    " gc/gcc/gcap:
    Bundle 'tpope/vim-commentary'
"   Bundle 'tomtom/tcomment_vim'


    """
    """ Testing.....
    """
    Bundle 'SearchComplete'
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

