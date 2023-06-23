" Match all yaml files under lacework-content/queries as lql files
au BufRead,BufNewFile */lacework-content/queries/*.yaml set filetype=lql
" Match all yaml files under services/metadata-library's queries folder as lql
au BufRead,BufNewFile */services/metadata-library-common/*/queries/*.yaml set filetype=lql
