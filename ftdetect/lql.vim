" Test all yaml files to see if it's lql
au BufRead,BufNewFile *.yaml,*.yml call CheckForLQL()


function! CheckForLQL()
    if getline(1) =~ '^.*queryId:.*$' && getline(2) =~ '^.*queryText:.*$'
      	set filetype=lql
	elseif getline(1) =~ '^---.*$' && getline(2) =~ '^.*queryId:.*$' && getline(3) =~ '^.*queryText:.*$'
		set filetype=lql
    endif
endfunction
