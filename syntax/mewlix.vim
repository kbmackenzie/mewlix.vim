" Mewlix syntax file.
" Language: Mewlix 
" Maintainer: kbmackenzie <kelly.a.betty@gmail.com>

if exists('b:current_syntax')
  finish
endif

" Helper functions:
" -------------------------------------------------
function! s:wordSequence(words)
  let l:output = '/\<' .. a:words[0] .. '\>'
  for word in a:words[1:]
    let l:output = l:output .. '\s*\<' .. word .. '\>'
  endfor
  return l:output .. '/'
endfunction

function! s:highlightWords(group, words)
  let l:syntaxCmd = 'syntax match ' .. a:group .. ' ' .. s:wordSequence(a:words)
  execute l:syntaxCmd
endfunction

syntax case match

" Identifiers:
" -------------------------------------------------
syntax match    mewlixType          /\<_*[A-Z][a-zA-Z0-9_]*\>/
syntax match    mewlixFunction      /\<_*[a-z][a-zA-Z0-9_]*\>\ze\s*(/
syntax match    mewlixBoxProperty   /\<_*[a-z][a-zA-Z0-9_]*\>:/
syntax match    mewlixDoAction      /\<_*[a-z][a-zA-Z0-9_]*\>\ze\s*<-/

" Literals:
" -------------------------------------------------
syntax match    mewlixInt           /\<\d\+\>/
syntax match    mewlixFloat         /\<\d\+\.\d\+\>/
syntax match    mewlixFloat         /\<\d\+\%(\.\d\+\)\?e\d\+\>/
syntax keyword  mewlixBoolean       true false
syntax keyword  mewlixNil           nothing

" Strings:
" -------------------------------------------------
syntax match    mewlixEscapeChar    contained /\\./
syntax region   mewlixString        start=/"/ skip=/\\"/ end=/"/ contains=mewlixEscapeChar
syntax region   mewlixString        start=/'/ skip=/\\'/ end=/'/ contains=mewlixEscapeChar
syntax region   mewlixStringLn      start=/"""/ skip=/\\"/ end=/"""/ contains=mewlixEscapeChar
syntax region   mewlixStringLn      start=/'''/ skip=/\\'/ end=/'''/ contains=mewlixEscapeChar
syntax region   mewlixYarnString    start=/:3"/ skip=/\%(\\"\|\[.*\]\)/ end=/"/ contains=mewlixEscapeChar
syntax region   mewlixYarnString    start=/:3'/ skip=/\%(\\'\|\[.*\]\)/ end=/'/ contains=mewlixEscapeChar

" Operators:
" -------------------------------------------------
syntax keyword  mewlixOperator      and not push is new nand nor if in
syntax match    mewlixOperator      /[+\-/\^=<>%]/
syntax match    mewlixOperator      /:>/
syntax match    mewlixOperator      /|>/
syntax match    mewlixOperator      /\.\.\%(\.?\)\?/
syntax match    mewlixOperator      /\*/

call s:highlightWords('mewlixOperator' , ['knock', 'over']  )
call s:highlightWords('mewlixOperator' , ['paw', 'at']      )
call s:highlightWords('mewlixOperator' , ['claw', 'at']     )
call s:highlightWords('mewlixOperator' , ['or']             )
call s:highlightWords('mewlixOperator' , ['else']           )
call s:highlightWords('mewlixOperator' , ['type', 'of']     )

" Statements:
" -------------------------------------------------
syntax keyword  mewlixDeclare       mew
syntax keyword  mewlixClowder       clowder wake 
syntax keyword  mewlixStatement     meow do catnap bring assert explode rethrow escape
syntax keyword  mewlixHome          home
syntax keyword  mewlixImport        takes as from
syntax keyword  mewlixYarnball      yarnball
syntax keyword  mewlixTryCatch      watch

call s:highlightWords('mewlixStatement'   , ['run', 'away']     )
call s:highlightWords('mewlixEnum'        , ['cat', 'tree']     )
call s:highlightWords('mewlixOutside'     , ['outside']         )
call s:highlightWords('mewlixOutside'     , ['look', 'outside'] )
call s:highlightWords('mewlixConditional' , ['pounce', 'when']  )
call s:highlightWords('mewlixConditional' , ['or', 'when']      )
call s:highlightWords('mewlixConditional' , ['else', 'hiss']    )
call s:highlightWords('mewlixRepeat'      , ['stare', 'while']  )
call s:highlightWords('mewlixRepeat'      , ['chase', 'after']  )
call s:highlightWords('mewlixRepeat'      , ['catch', 'a']      )
call s:highlightWords('mewlixYarnball'    , ['yarn', 'ball']    )
call s:highlightWords('mewlixTryCatch'    , ['pounce', 'on']    )

" Symbols:
" -------------------------------------------------
syntax match    mewlixFuncDef       /=\^\.[xX]\.\^=/
syntax match    mewlixBox           /=\^-[xX]-\^=/
syntax match    mewlixLambda        /=\^[oO][xX][oO]^=/
syntax match    mewlixLambda        /->/
syntax match    mewlixDoArrow       /<-/

" Newline escape:
" -------------------------------------------------
syntax match    mewlixEscapeLine    /\\$/

" Standard library:
" -------------------------------------------------
syntax keyword  mewlixStd           std console graphic curry

" Comments:
" -------------------------------------------------
syntax case ignore
syntax keyword  mewlixTodo          contained TODO FIXME XXX
syntax match    mewlixLineComment   /--.*$/ contains=@Spell,mewlixTodo
syntax region   mewlixBlockComment  start=/\~( \^\.[xX]\.\^)>/ end=/<(\^\.[xX]\.\^ )\~/ contains=@Spell,mewlixTodo

" --------------------------------
" Adding highlighting:
" --------------------------------
let b:current_syntax = 'mewlix'

" Identifiers:
hi def link mewlixType          Type
hi def link mewlixFunction      Function
hi def link mewlixBoxProperty   Identifier
hi def link mewlixDoAction      Function

" Numbers + Booleans + Nothing:
hi def link mewlixInt           Number
hi def link mewlixFloat         Float
hi def link mewlixBoolean       Boolean
hi def link mewlixNil           Constant

" Strings:
hi def link mewlixEscapeChar    SpecialChar
hi def link mewlixString        String
hi def link mewlixStringLn      String
hi def link mewlixYarnString    String

" Operators:
hi def link mewlixOperator      Operator

" Statements:
hi def link mewlixDeclare       Statement
hi def link mewlixEnum          Statement
hi def link mewlixClowder       Statement
hi def link mewlixStatement     Statement
hi def link mewlixHome          Identifier
hi def link mewlixOutside       Identifier
hi def link mewlixConditional   Conditional
hi def link mewlixRepeat        Repeat
hi def link mewlixYarnball      Statement
hi def link mewlixImport        Include
hi def link mewlixTryCatch      Statement

" Symbols:
hi def link mewlixFuncDef       Statement
hi def link mewlixBox           Statement
hi def link mewlixLambda        Statement
hi def link mewlixDoArrow       Statement

" Standard library:
hi def link mewlixStd           Identifier

" Newline escape:
hi def link mewlixEscapeLine    Special

" Comments:
hi def link mewlixTodo          Todo
hi def link mewlixLineComment   Comment
hi def link mewlixBlockComment  Comment
