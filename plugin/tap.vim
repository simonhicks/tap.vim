function! s:tap(cmd, line1, line2)
  let l:lines = getline(a:line1, a:line2)
  let l:input = join(l:lines, "\n")
  echo system(a:cmd, l:input)
endfunction

command! -complete=shellcmd -range=% -nargs=* Tap call <SID>tap(<q-args>, <line1>, <line2>)
