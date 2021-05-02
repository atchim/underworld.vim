if !exists('g:lightline') | finish | endif

function! s:v(fg, bg, ...)
  let l:v = []
  call add(l:v, g:underworld#palette[a:fg][1])
  call add(l:v, g:underworld#palette[a:bg][1])
  call add(l:v, g:underworld#palette[a:fg][0])
  call add(l:v, g:underworld#palette[a:bg][0])
  let l:attrs = get(a:, 1, 'NONE')
  if l:attrs !=# 'NONE' | call add(l:v, l:attrs) | endif
  return l:v
endfunction

let s:f = s:v(7, 2, 'bold')

let s:p = {
  \ 'inactive': {},
  \ 'insert': {},
  \ 'normal': {},
  \ 'replace': {},
  \ 'tabline': {},
  \ 'visual': {},
\ }

let s:p.insert.left = [s:v(0, 10, 'bold'), s:f]
let s:p.normal.left = [s:v(0, 11, 'bold'), s:f]
let s:p.replace.left = [s:v(0, 15, 'bold'), s:f]
let s:p.visual.left = [s:v(0, 9, 'bold'), s:f]

let s:p.inactive.left = [s:v(5, 1)]
let s:p.inactive.middle = copy(s:p.inactive.left)
let s:p.inactive.right = copy(s:p.inactive.middle)

let s:p.normal.error = [s:v(0, 15, 'bold')]
let s:p.normal.middle = [s:v(6, 2, 'bold')]
let s:p.normal.right = copy(s:p.normal.middle)
let s:p.normal.warning = [s:v(0, 9, 'bold')]

let s:p.tabline.left = [s:v(6, 2)]
let s:p.tabline.middle = [s:v(-1, 1)]
let s:p.tabline.right = copy(s:p.tabline.left)
let s:p.tabline.tabsel = [s:v(7, 0, 'bold')]

let g:lightline#colorscheme#underworld#palette = s:p
