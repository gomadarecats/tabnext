scriptencoding utf-8

function! TABNEXT(...)
  let tabnum = get(a:, 1, '')
  let tabmax = gettabinfo()[-1]["tabnr"]
  if tabnum > 0
    if tabnum > tabmax
      let tabnum = tabmax
    endif
    execute 'tabnext' tabnum
  elseif tabnum < 0
    let tabnum = abs(tabnum)
    execute 'tabprevious' tabnum
  endif
endfunction

