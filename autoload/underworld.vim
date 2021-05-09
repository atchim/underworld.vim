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
  \ [174, '#e27575'],
  \ [137, '#ad9346'],
  \ [70, '#70a33e'],
  \ [71, '#43a95d'],
  \ [73, '#3ea4a4'],
  \ [68, '#7993de'],
  \ [140, '#b27fe4'],
  \ [176, '#d772be'],
  \ ['NONE', 'NONE'],
\ ]

function! underworld#Hi(group, ...)
  let l:attrs = get(a:, 3, 'NONE')
  let l:bg = g:underworld#palette[get(a:, 2, -1)]
  let l:fg = g:underworld#palette[get(a:, 1, -1)]
  let l:guisp = get(a:, 4, -1)

  if !has('gui_running') && l:guisp != -1
    let l:fg = g:underworld#palette[l:guisp]
    let l:guisp = g:underworld#palette[-1]
  else
    let l:guisp = g:underworld#palette[l:guisp]
  endif

  execute
    \ 'highlight '
    \ a:group
    \ ' cterm=' . l:attrs
    \ ' ctermbg=' . l:bg[0]
    \ ' ctermfg=' . l:fg[0]
    \ ' gui=' . l:attrs
    \ ' guibg=' . l:bg[1]
    \ ' guifg=' . l:fg[1]
    \ ' guisp=' . l:guisp[1]
endfunction
