if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" Trim all trailing whitespace for lql files
autocmd BufWritePre <buffer> %s/\s\+$//e
