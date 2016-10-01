" Vim syntax file
" Language:         Mobile Labs Trust Log File
" Maintainer:       Kris Johnson <kris.johnson@mobilelabsinc.com>
" Latest Revision:  2016-10-01
" Changes:          

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match   trustlogBegin       display '^' nextgroup=trustlogDate,trustlogException

syn match   trustlogDate        contained display '\d\d\d\d-\d\d-\d\d *'
                                \ nextgroup=trustlogTime

syn match   trustlogTime        contained display '\d\d:\d\d:\d\d.\d\d\d\d\s*'
                                \ nextgroup=trustlogWhere

syn match   trustlogWhere       contained display '\[\S\+\]\s*'
                                \ nextgroup=trustlogWhere2

syn match   trustlogWhere2       contained display '\[\S\+\]\s*'
                                \ nextgroup=trustlogText

syn match   trustlogText        contained display '.*'
                                \ contains=trustlogGUID,trustlogIP,trustlogURL,trustlogError,trustlogNumber,trustlogNull,trustlogEnter,trustlogEnd,trustlogHashtag

syn match   trustlogNumber      contained '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match   trustlogNull        'null'

syn match   trustlogGUID        contained '\v\x{8}-\x{4}-\x{4}-\x{4}-\x{12}'

syn match   trustlogError       contained '\c.*\<\(FATAL\|ERROR\|ERRORS\|FAILED\|FAILURE\|Exception\).*'

syn match   trustlogIP          '\d\+\.\d\+\.\d\+\.\d\+'

syn match   trustlogURL         '\w\+://\S\+'

syn match   trustlogEnter       '(Enter)'

syn match   trustlogEnd         '(End)'

syn match   trustlogHashtag     '#\w\+'

syn match   trustlogException   contained display '\S*\Exception: *\| *at \S*'

hi def link trustlogInitialPID  Comment
hi def link trustlogDate        Constant
hi def link trustlogTime        Type
hi def link trustlogConnection  Statement
hi def link trustlogWhere       Identifier
hi def link trustlogWhere2      Type
hi def link trustlogEnter       Identifier
hi def link trustlogEnd         Identifier
hi def link trustlogOldPID      Constant
hi def link trustlogError       ErrorMsg
hi def link trustlogException   Exception
hi def link trustlogIP          Constant
hi def link trustlogGUID        Constant
hi def link trustlogNull        Constant
hi def link trustlogURL         Underlined
hi def link trustlogText        Normal
hi def link trustlogNumber      Number
hi def link trustlogHashtag     Constant

let b:current_syntax = "trustlog"

let &cpo = s:cpo_save
unlet s:cpo_save

