" Trim all trailing whitespace for lql files
autocmd FileType lql autocmd BufWritePre <buffer> %s/\s\+$//e
