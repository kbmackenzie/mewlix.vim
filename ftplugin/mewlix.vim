function! s:emojify()
  silent %substitute/=\^\.x\.\^=/🐱/ge
  silent %substitute/=\^oxo\^=/🐈/ge
  silent %substitute/=\^-x-\^=/📦/ge
endfun

command! MewlixEmojify call s:emojify()
