function! s:emojify()
    silent s/=\^\.x\.\^=/😺/g
    silent s/=\^oxo\^=/🐈/g
    silent s/=\^-x-\^=/📦/g
endfun

command! MewlixEmojify call s:emojify()
