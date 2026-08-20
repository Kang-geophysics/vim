if executable('ruff')
		" ====================================================================
    " pip install ruff
		" ====================================================================
    au User lsp_setup call lsp#register_server({
        \ 'name': 'ruff',
        \ 'cmd': {server_info->['ruff','server']},
        \ 'allowlist': ['python'],
        \ 'config': {
        \   'diagnostics': 1,
        \   'document_symbol': 0,
        \   'code_action': 1,
        \   'hover': 0
        \}
        \ })
endif
if executable('rumdl')
		" ====================================================================
    " pip install rumdl
		" ====================================================================
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rumdl',
        \ 'cmd': {server_info->['rumdl','server']}
        \ 'allowlist': ['markdown'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=no
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gr <plug>(lsp-reference)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>ll <plug>(lsp-status)

		" ====================================================================
		" Auto formatting
		" ====================================================================
    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.py,*.md,*.rs,*.go call execute('LspDocumentFormatSync')
endfunction

augroup lsp_install
    au!
		" ====================================================================
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
		" ====================================================================
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
