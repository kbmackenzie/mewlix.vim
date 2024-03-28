" Mewlix syntax file.
" Language: Mewlix 
" Maintainer: Kelly Bethany <kelly.a.betty@gmail.com>

if exists("b:current_syntax")
    finish
endif

syntax case match

" Identifiers
" -------------------------------------------------
"syntax match    mewlixIdentifier    /[a-z_][a-zA-Z0-9_]*/
syntax match    mewlixType          /[A-Z][a-zA-Z0-9_]*/

" Constants
" -------------------------------------------------
syntax match    mewlixInt           /\d\+/
syntax match    mewlixFloat         /\d\+\.\d\+/
syntax match    mewlixFloat         /\d\+\%(\.\d\+\)\?e\d\+/
syntax match    mewlixEscape        contained /\\[a-z\/\\"]/
syntax region   mewlixString        start=/"/ skip=/\\"/ end=/"/ contains=mewlixEscape
syntax region   mewlixStringLn      start=/"""/ skip=/\\"/ end=/"""/ contains=mewlixEscape
syntax region   mewlixYarnString    start=/:3"/ skip=/\\"/ end=/"/ contains=mewlixEscape
syntax keyword  mewlixBoolean       true false
syntax keyword  mewlixNil           nothing

" Operators
" -------------------------------------------------
syntax keyword  mewlixOperator      and not push paw claw at is new
syntax match    mewlixOperator      /\%(^\|[^a-zA-Z_]\)knock over\%([^a-zA-Z_]\|$\)/
syntax match    mewlixOperator      /\%(^\|[^a-zA-Z_]\)peek\%([^a-zA-Z_]\|$\)/
syntax match    mewlixOperator      /\%(^\|[^a-zA-Z_]\)or\%([^a-zA-Z_]\|$\)/
syntax match    mewlixOperator      /[+-/^=<>?%!]/
syntax match    mewlixOperator      /\.\./
syntax match    mewlixOperator      /\*/ " This character was giving me some issues. c':

" Statement Statements
" -------------------------------------------------
syntax keyword  mewlixDeclare       mew
syntax keyword  mewlixClowder       clowder
syntax keyword  mewlixStatement     meow meowmeow wake listen catnap bring assert throw escape
syntax keyword  mewlixHome          home
syntax match    mewlixOutside       /\%(^\|[^a-zA-Z_]\)look\s*outside\%([^a-zA-Z_]\|$\)/
syntax match    mewlixConditional   /\%(^\|[^a-zA-Z_]\)peek\s*if\%([^a-zA-Z_]\|$\)/
syntax match    mewlixConditional   /\%(^\|[^a-zA-Z_]\)or\s*if\%([^a-zA-Z_]\|$\)/
syntax keyword  mewlixConditional   otherwise
syntax match    mewlixRepeat        /\%(^\|[^a-zA-Z_]\)stare\s*while\%([^a-zA-Z_]\|$\)/
syntax match    mewlixRepeat        /\%(^\|[^a-zA-Z_]\)it\'s\s*raining\%([^a-zA-Z_]\|$\)/
syntax match    mewlixRepeat        /\%(^\|[^a-zA-Z_]\)catch\s*a\%([^a-zA-Z_]\|$\)/
syntax keyword  mewlixImport        takes as from
syntax keyword  mewlixYarnball      yarnball
syntax match    mewlixYarnball      /\%(^\|[^a-zA-Z_]\)yarn\s*ball\%([^a-zA-Z_]\|$\)/
syntax match    mewlixStatement     /\%(^\|[^a-zA-Z_]\)watch\s*attentively\%([^a-zA-Z_]\|$\)/
syntax match    mewlixStatement     /\%(^\|[^a-zA-Z_]\)pounce\s*on\%([^a-zA-Z_]\|$\)/

" Symbols:
" -------------------------------------------------
syntax match    mewlixFunction      /=\^\.[xX]\.\^=/
syntax match    mewlixBox           /=\^-[xX]-\^=/
syntax match    mewlixLambda        /=\^[oO][xX][oO]^=/
syntax match    mewlixLambda        /=>/

" Additional Symbols:
" -------------------------------------------------
syntax match    mewlixBrackets      /[\[\]]/
syntax match    mewlixParens        /[()]/
syntax match    mewlixDot           /\./

" Newline Escape:
" -------------------------------------------------
syntax match    mewlixEscapeLine    /\\\n/

" Libraries:
" -------------------------------------------------
syntax keyword  mewlixStd           std console graphic

" Comments:
" -------------------------------------------------
syntax case ignore
syntax keyword  mewlixTodo          contained TODO FIXME XXX
syntax match    mewlixLineComment   /--.*$/ contains=@Spell,mewlixTodo
syntax region   mewlixBlockComment  start=/\~( \^\.[xX]\.\^)>/ end=/<(\^\.[xX]\.\^ )\~/ contains=@Spell,mewlixTodo

" Adding highlighting:
" --------------------------------
let b:current_syntax = "mewlix"

"hi def link mewlixIdentifier    Identifier
hi def link mewlixType          Type
hi def link mewlixInt           Number
hi def link mewlixFloat         Float
hi def link mewlixString        String
hi def link mewlixStringLn      String
hi def link mewlixYarnString    String
hi def link mewlixBoolean       Boolean
hi def link mewlixNil           Constant
hi def link mewlixEscape        SpecialChar
hi def link mewlixOperator      Operator

hi def link mewlixDeclare       Statement
hi def link mewlixClowder       Statement
hi def link mewlixStatement     Statement
hi def link mewlixHome          Identifier
hi def link mewlixOutside       Identifier
hi def link mewlixConditional   Conditional
hi def link mewlixRepeat        Repeat
hi def link mewlixYarnball      Statement
hi def link mewlixImport        Include

hi def link mewlixFunction      Statement
hi def link mewlixBox           Statement
hi def link mewlixLambda        Statement

hi def link mewlixStd           Identifier

hi def link mewlixBrackets      Statement " Choosing 'Statement' for aesthetic purposes, really!
hi def link mewlixParens        Statement 
hi def link mewlixDot           Statement

hi def link mewlixEscapeLine    SpecialComment

hi def link mewlixTodo          Todo
hi def link mewlixLineComment   Comment
hi def link mewlixBlockComment  Comment
