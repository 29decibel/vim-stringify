" plugin/stringify.vim
" Author: 29decibel

" make raw contents string
function! Stringify() range
  for linenum in range(a:firstline, a:lastline)
    let replaceSub = "'\\1'\ +"
    if a:lastline == linenum
      let replaceSub = "'\\1'"
    endif
    let newline = getline(linenum)
    " escape single quote
    let newline = substitute(newline, "'", "\\\\\\\'", 'g')
    " add single quotes and plus
    let newline = substitute(newline,'\(\S.*\)', replaceSub ,'g')
    call setline(linenum, newline)
  endfor
endfunction
