" Mewlix syntax file.
" Language: Mewlix 
" Maintainer: Kelly Bethany <kelly.a.betty@gmail.com>

if exists("b:current_syntax")
    finish
endif

syntax case match

" Identifiers
" -------------------------------------------------
syntax match    mewlixIdentifier    /[a-z_][a-zA-Z0-9_]*/
syntax match    mewlixType          /[A-Z][a-zA-Z0-9_]*/

" Constants
" -------------------------------------------------
syntax match    mewlixInt           /\d\+/
syntax match    mewlixFloat         /\d\+\.\d\+/
syntax match    mewlixFloat         /\d\+\%(\.\d\+\)\?e\d\+/
syntax match    mewlixEscape        /\\[a-z\/\\"]/
syntax region   mewlixString        start=/"/ skip=/\\"/ end=/"/ contains=mewlixEscape
syntax region   mewlixStringLn      start=/"""/ skip=/\\"/ end=/"""/ contains=mewlixEscape
syntax keyword  mewlixBoolean       true false
syntax keyword  mewlixConstants     nothing home super outside

" Operators
" -------------------------------------------------
syntax keyword  mewlixOperator      and not push paw claw at is new
syntax match    mewlixOperator      /\%(^\|\s\)knock over\%(\s\|$\)/
syntax match    mewlixOperator      /\%(^\|\s\)peek\%(\s\|$\)/
syntax match    mewlixOperator      /\%(^\|\s\)or\%(\s*if\)\@\!\%(\s\|$\)/
syntax match    mewlixOperator      /[+-/^=<>?%!]/
syntax match    mewlixOperator      /\.\./
syntax match    mewlixOperator      /\*/ " This character was giving me some issues. c':

" Statement Statements
" -------------------------------------------------
syntax keyword  mewlixDeclare       mew
syntax keyword  mewlixClowder       clowder
syntax keyword  mewlixStatement     meow meowmeow wake listen catnap assert throw escape
syntax match    mewlixConditional   /\%(^\|\s\)peek\s*if\%(\s\|$\)/
syntax match    mewlixConditional   /\%(^\|\s\)or\s*if\%(\s\|$\)/
syntax keyword  mewlixConditional   otherwise
syntax match    mewlixRepeat        /\%(^\|\s\)stare\s*while\%(\s\|$\)/
syntax match    mewlixRepeat        /\%(^\|\s\)it\'s\s*raining\%(\s\|$\)/
syntax match    mewlixRepeat        /\%(^\|\s\)catch\s*a\%(\s\|$\)/
syntax keyword  mewlixImport        takes as
syntax keyword  mewlixYarnball      yarnball
syntax match    mewlixYarnball      /\%(^\|\s\)yarn\s*ball\%(\s\|$\)/
syntax match    mewlixStatement     /\%(^\|\s\)watch\s*attentively\%(\s\|$\)/
syntax match    mewlixStatement     /\%(^\|\s\)pounce\s*on\%(\s\|$\)/

" Symbols:
" -------------------------------------------------
syntax match    mewlixFunction      /=\^\.[xX]\.\^=/
syntax match    mewlixBox           /=\^-[xX]-\^=/
syntax match    mewlixLambda        /=\^\*[xX]\*\^=/

" Libraries:
" -------------------------------------------------
syntax keyword  mewlixStd           std console graphic

" Comments:
" -------------------------------------------------
syntax match    mewlixLineComment   /--.*$/
syntax region   mewlixBlockComment  start=/\~( \^\.[xX]\.\^)>/ end=/<(\^\.[xX]\.\^ )\~/

" Extra:
" -------------------------------------------------
syntax match    mewlixBrackets      /[\[\]]/
syntax match    mewlixParens        /[()]/
syntax match    mewlixDot           /\./

" Escape:
" -------------------------------------------------
syntax match    mewlixEscapeLine    /\\\n/

" Adding highlighting:
" --------------------------------
let b:current_syntax = "mewlix"

"hi def link mewlixIdentifier    Identifier
hi def link mewlixType          Type
hi def link mewlixInt           Number
hi def link mewlixFloat         Float
hi def link mewlixString        String
hi def link mewlixStringLn      String
hi def link mewlixBoolean       Boolean
hi def link mewlixConstants     Constant
hi def link mewlixEscape        SpecialChar
hi def link mewlixOperator      Operator

hi def link mewlixDeclare       Statement
hi def link mewlixClowder       Statement
hi def link mewlixStatement     Statement
hi def link mewlixConditional   Conditional
hi def link mewlixRepeat        Repeat
hi def link mewlixYarnball      Statement
hi def link mewlixImport        Include

hi def link mewlixFunction      Statement
hi def link mewlixBox           Statement
hi def link mewlixLambda        Statement

hi def link mewlixStd           Constant

hi def link mewlixBrackets      Statement " Choosing 'Statement' for aesthetic purposes, really!
hi def link mewlixParens        Statement 
hi def link mewlixDot           Statement

hi def link mewlixEscapeLine    SpecialComment

hi def link mewlixLineComment   Comment
hi def link mewlixBlockComment  Comment
