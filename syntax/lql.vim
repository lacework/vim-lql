" Vim syntax file
" Language: Lacework Query Language
" Maintainer: Daniel Thorpe
" Latest Revision: 19 April 2023

if exists("b:current_syntax")
    finish
endif

syn keyword queryTags queryId queryText
syn keyword openTags source filter return
syn keyword lqlBool true false
syn keyword lqlKeyword distinct as in
syn keyword lqlComparator like and or between
syn keyword lqlFunction array_to_rows

syn region queryText start="{" end="}" fold transparent contains=openTags,lqlBool,lqlKeyword,lqlComparator,lqlFunction

syn match lqlComment "--.*$" containedin=ALL
syn match lqlString "\'.*\'" containedin=ALL

let b:current_syntax = "lql"
set tabstop=4
set shiftwidth=4

hi def link queryTags   Identifier
hi def link openTags    Function
hi def link lqlComment  Comment
hi def link lqlBool     Boolean
hi def link lqlKeyword  Keyword
hi def link lqlComparator   Statement
hi def link lqlFunction Function
hi def link lqlString   String
