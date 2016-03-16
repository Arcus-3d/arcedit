" Vim syntax file
" Language: RS274/NGC
" Maintainer: Gary Fixler <gfixler.emc@gmail.com>
" Last Change: 2008 May 31

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn case ignore

:syntax match ngcConstant /\-\=[.0-9]*/
:syntax keyword ngcConditional if else endif
:syntax keyword ngcRepeat do while endwhile break continue
:syntax keyword ngcFunction sub endsub call return
:syntax keyword ngcOperator EQ NE GT GE LT LE ABS ACOS ASIN ATAN COS EXP FIX FUP LN ROUND SIN SQRT TAN MOD AND OR
:syntax match ngcOperatorPunc "[%\-+*/\[\]]"
:syntax match ngcIdentifier /#<*[A-Z_0-9]*>*/
:syntax match ngcLabel /^\s*o\d* /he=e-1,me=e-1
:syntax match ngcLineNumbers /^\s*n\d* /he=e-1,me=e-1
:syntax keyword ngcTodo TODO FIXME XXX contained
:syntax match ngcComment /;.*$/ contains=ngcTodo
:syntax match ngcMessage /(\s*MSG\s*,.*)/ contains=ngcIdentifier
:syntax match ngcLogOpen /(\s*LOGOPEN\s*,.*)/
:syntax match ngcLogClose /(\s*LOGCLOSE\s*)/
:syntax match ngcLog /(\s*LOG\s*,.*)/ contains=ngcIdentifier
:syntax match ngcPrint /(\s*PRINT\s*,.*)/ contains=ngcIdentifier
:syntax match ngcDebug /(\s*DEBUG\s*,.*)/ contains=ngcIdentifier
:syntax keyword ngcGCodes g00 g01 g02 g03 g04 g0 g1 g2 g3 g4 g10 g17 g18 g19 g20 g21 g22 g23 g28 g30 g33 g33.1 g38.2 g38.x g40 g41 g41.1 g42 g42.1 g43 g43.1 g49 g53 g54 g55 g56 g57 g58 g59 g59.1 g59.2 g59.3 g61 g61.1 g64 g76 g80 g81 g82 g83 g84 g85 g86 g87 g88 g89 g90 g91 g92 g92.1 g92.2 g92.3 g93 g94 g95 g96 g97 g98 g99
:syntax keyword ngcMCodes M00 M01 M02 M03 M04 M05 M06 M07 M08 M09 M0 M1 M2 M3 M4 M5 M6 M7 M8 M9 M30 M48 M49 M50 M51 M52 M53 M60 M62 M63 M64 M65 M66 M104 M107 M109 M190 M163 M700
:syntax match ngcMUserCodes /\s*M1\d\d\s*/
:syntax match ngcAxes /\s[xyzuvwabc]\(-\|\[\|\d\)/he=e-1,me=e-1
:syntax match ngcSpecials /\s[ijkrelpds]\(-\|\[\|\d\)/he=e-1,me=e-1
:syntax match ngcFeed /\(\s\|^\)f\d/he=e-1,me=e-1
:syntax match ngcTool /\(\s\|^\)[ht]\d/he=e-1,me=e-1

:highlight link ngcConstant Constant
:highlight link ngcConditional Conditional
:highlight link ngcRepeat Repeat
:highlight link ngcFunction Function
:highlight link ngcOperator Operator
:highlight link ngcOperatorPunc Operator
:highlight link ngcIdentifier Identifier
:highlight link ngcLabel Label
:highlight link ngcLineNumbers Label
:highlight link ngcTodo Todo
:highlight link ngcComment Comment
:highlight link ngcMessage SpecialComment
:highlight link ngcLogOpen SpecialComment
:highlight link ngcLogClose SpecialComment
:highlight link ngcLog SpecialComment
:highlight link ngcPrint SpecialComment
:highlight link ngcDebug Debug
:highlight link ngcGCodes Keyword
:highlight link ngcMCodes Keyword
:highlight link ngcMUserCodes Keyword
:highlight link ngcAxes SpecialChar
:highlight link ngcSpecials SpecialChar
:highlight link ngcFeed SpecialChar
:highlight link ngcTool SpecialChar

