" Vim plugin to redirect command output into a register
" Last Change: 2002 Aug 30
" Timestamp: <regRedir.vim Fri 2002/08/30 00:15:49 guivho BTM4BZ>
" Maintainer: Guido Van Hoecke <Guido@VanHoecke.org>

" Description: This plugin defines a 'Redir' command that takes a register
    " and one or more {bar} separated commands. This command will execute 
    " these commands and collect their output into the specified register.
    " The resulting register could than be inserted anywhere with a :put
    " The register must always be specified, and is the first character 
    " of the command argument. The remainder of the argument is the command
    " to be captured. This command may be separated from the register with 
    " a space. Several commands can be specified, but have to be separated
    " with a bar:
    "
    " :Redir {reg} {cmd} [ | {cmd} [ | {cmd} ... ] ]
    " 
    " Examples:
    " 1) Simple case of one command (e.g. :version) to be captured into 
    "    register v
    "	    :Redir vversion
    "	 or
    "	    :Redir v version
    " 2) Example of two commands (ls and set) to be collected into 
    "	 register p
    "	    :Redir p ls | set
    "	 or
    "	    :Redir pls|set
    " 3) Example of a command (g/exe) to be appended to register x
    "	    :Redir Xg/exe
    "	 or
    "	    :Redir X g/exe
    "

" Installation: Just unzip and copy this file into your ~/vim/plugin 
"		or corresponding directory
" License: This file is placed in the public domain.
" History: Version 1.

function! s:regRedir(reg, cmd)
    " redirects the output of the a:cmd command(s) into register a:reg
    let reg = a:reg
    exe 'redir @' . reg
    let cmd = a:cmd
    let idx = stridx(cmd, '|')
    while idx >= 0 
	if idx > 0
	    let part = strpart(cmd, 0, idx - 1)
	    if part != ""
		exe ':silent! ' . part
		exe 'redir END'
		exe 'redir @' . toupper(a:reg)
	    endif
	endif
	let cmd = strpart(cmd, idx+1)
	let idx = stridx(cmd, '|')
    endwhile
    exe ':silent! ' . cmd 
    exe 'redir END'
endfunction

"specify the Redir command
command! -register -nargs=+ Redir call s:regRedir("<reg>", "<args>")

