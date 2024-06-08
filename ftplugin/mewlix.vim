function! s:emojify()
    silent s/=\^\.x\.\^=/😺/ge
    silent s/=\^oxo\^=/🐈/ge
    silent s/=\^-x-\^=/📦/ge
endfun

command! MewlixEmojify call s:emojify()
