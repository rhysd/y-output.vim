if exists('b:current_syntax')
    finish
endif

syn match youtputWarn "\<shift/reduce\>\%( conflicts\=\)\=" display skipwhite
syn match youtputError "\<reduce/reduce\>\%( conflicts\=\)\=" display skipwhite
syn match youtputState "^state \d\+$" display skipwhite
syn match youtputCurrentState "^\s\+[^:]\+:\s\+" display skipwhite
syn match youtputShiftReduce "^\s\+\S\+\s\+\%(shift\|reduce\|accept\|error\)\>" contains=youtputSRTarget,youtputSRWords
syn match youtputSRTarget "^\s\+\S\+\s\+" display skipwhite nextgroup=youtputShiftReduceWords contained containedin=youtputShiftReduce
syn match youtputSRWords "\<\%(shift\|reduce\|accept\|error\)\>" display skipwhite contained containedin=youtputShiftReduce
syn match youtputTableGoto "^\s\+\S\+\s\+goto\>" contains=youtputGoto
syn keyword youtputGoto goto display contained containedin=youtputTableGoto
syn match youtputNumber "\d\+" display

hi def link youtputWarn WarningMsg
hi def link youtputError ErrorMsg
hi def link youtputState Title
hi def link youtputCurrentState Directory
hi def link youtputSRTarget Macro
hi def link youtputSRWords Question
hi def link youtputGoto Question
hi def link youtputNumber Constant

let b:current_syntax = 'y_output'

" vim: nowrap sw=4 sts=4 ts=4 et:
