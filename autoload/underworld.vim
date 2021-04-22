if exists('g:loaded_underworld_autoload') | finish | endif
let g:loaded_underworld_autoload = 1

let g:underworld#palette = [
  \ [232, '#080808'],
  \ [233, '#0d0d0d'],
  \ [234, '#121212'],
  \ [235, '#1a1a1a'],
  \ [236, '#252525'],
  \ [237, '#383838'],
  \ [240, '#5a5a5a'],
  \ [246, '#959595'],
  \ [137, '#b58e6c'],
  \ [101, '#8d9c55'],
  \ [71, '#5ea55b'],
  \ [72, '#58a38d'],
  \ [67, '#729abc'],
  \ [140, '#9a8ad7'],
  \ [176, '#c47bc7'],
  \ [174, '#cb7f95'],
  \ ['NONE', 'NONE'],
\ ]

function! underworld#Hi(group, fg=-1, bg=-1, attrs='NONE', sp=-1)
  let l:bg = g:underworld#palette[a:bg]
  let l:fg = g:underworld#palette[a:fg]
  let l:sp = g:underworld#palette[a:sp]

  if !has('gui_running') && a:sp != -1
    let l:fg = g:underworld#palette[a:sp]
    let l:sp = g:underworld#palette[-1]
  endif

  execute
    \ 'highlight '
    \ a:group
    \ ' cterm=' . a:attrs
    \ ' ctermbg=' . l:bg[0]
    \ ' ctermfg=' . l:fg[0]
    \ ' gui=' . a:attrs
    \ ' guibg=' . l:bg[1]
    \ ' guifg=' . l:fg[1]
    \ ' guisp=' . l:sp[1]
endfunction
