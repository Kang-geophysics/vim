function! FugitiveIconicHead()
  if exists('*FugitiveHead')
    let l:branch = FugitiveHead()
    if l:branch !=# ''
      if &encoding ==# 'utf-8'
        "Git branch icon code of Nerd Font
        let l:icon = "\uf126"
      return l:icon . ' ' . l:branch
    endif
  endif
  return ''
endfunction
