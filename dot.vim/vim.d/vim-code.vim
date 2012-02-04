
" VimCode
" ================

    " Set font according to system
    " ============================ "{{{
    "   Ref: http://amix.dk/vim/vimrc.html
    " if MySys() == "mac"
    "     set gfn=Menlo:h14
    "     set shell=/bin/bash
    " elseif MySys() == "windows"
    "     set gfn=Bitstream\ Vera\ Sans\ Mono:h10
    " elseif MySys() == "linux"
    "     set gfn=Monospace\ 10
    "     set shell=/bin/bash
    " endif
    "}}}

    " Lorem Ipsum
    " =========== "{{{
    " define :Lorem command to dump in a paragraph of lorem ipsum
    " by Willa! http://github.com/willian/willvim/tree/master
    command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
            \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
            \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
            \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
            \ fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            \ proident, sunt in culpa qui officia deserunt mollit anim id est
            \ laborum
    "}}}

    " Secure {{{
    " ======
    " Ref: http://www.pixelbeat.org/settings/.vimrc"
    " To create new file securely do: vim new.file.txt.gpg
    " Your private key used to decrypt the text before viewing should
    " be protected by a passphrase. Alternatively one could use
    " a passphrase directly with symmetric encryption in the gpg commands below.
    " au BufNewFile,BufReadPre *.gpg :set secure viminfo= noswapfile nobackup nowritebackup history=0 binary
    " au BufReadPost *.gpg :%!gpg -d 2>/dev/null
    " au BufWritePre *.gpg :%!gpg -e -r 'P@draigBrady.com' 2>/dev/null
    " au BufWritePost *.gpg u
    "}}}

    " Markdown Preview in Browser
    " =========================== {{{
    " Ref: http://mathias-biilmann.net/2009/1/markdown-preview-in-vim
        " function! PreviewMKD()
        "     ruby << EOF
        "     require 'rubygems'
        "     require 'bluecloth'
        "     t = ""
        "     VIM::Buffer.current.count.times {|i| t += "#{VIM::Buffer.current[i + 1]}\n"}
        "     html_file = VIM::Buffer.current.name.gsub(/.(md|mkd)$/, '.html')
        "     if html_file == VIM::Buffer.current.name
        "         print "Error! - This file extension is not supported for Markdown previews"
        "     end
        "     File.open(html_file, 'w') do |f|
        "         f.write(BlueCloth.new(t).to_html)
        "     end
        "     system("open #{html_file}")
        "     EOF
        " endfunction
        " map <Leader>p :call PreviewMKD()<CR>"
        " }}}

    " :0 put =range(1,15)
    " :for in in range(1,15) | put ='192.168.1.'.i | endfor


" vim: set foldlevel=9

