" ====================================================================
" Custom function for filetype icon
" ====================================================================
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? (&filetype . ' ' . WebDevIconsGetFileTypeSymbol()) : 'no ft') : ''
endfunction
" ====================================================================
" Custom function for fileformat icon
" ====================================================================
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
