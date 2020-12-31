if !exists("g:lightline")
  finish
endif

let s:underworld_00 = ['#080808', 'NONE']
let s:underworld_01 = ['#0d0d0d', 'NONE']
let s:underworld_02 = ['#121212', 'NONE']
let s:underworld_03 = ['#1a1a1a', 'NONE']
let s:underworld_04 = ['#252525', 'NONE']
let s:underworld_05 = ['#383838', 'NONE']
let s:underworld_06 = ['#5a5a5a', 'NONE']
let s:underworld_07 = ['#959595', 'NONE']
let s:underworld_08 = ['#b58e6c', 'NONE']
let s:underworld_09 = ['#8d9c55', 'NONE']
let s:underworld_10 = ['#5ea55b', 'NONE']
let s:underworld_11 = ['#58a38b', 'NONE']
let s:underworld_12 = ['#729abc', 'NONE']
let s:underworld_13 = ['#9a8ad7', 'NONE']
let s:underworld_14 = ['#c47bc7', 'NONE']
let s:underworld_15 = ['#cb7f95', 'NONE']

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

let s:p.inactive.left = [[s:underworld_05, s:underworld_01], [s:underworld_05, s:underworld_01]]
let s:p.inactive.middle = [[s:underworld_05, s:underworld_01]]
let s:p.inactive.right = [[s:underworld_05, s:underworld_01], [s:underworld_05, s:underworld_01]]

let s:p.normal.error = [[s:underworld_00, s:underworld_15]]
let s:p.normal.left = [[s:underworld_00, s:underworld_14], [s:underworld_07, s:underworld_03]]
let s:p.normal.middle = [[s:underworld_06, s:underworld_02]]
let s:p.normal.right = [[s:underworld_07, s:underworld_04], [s:underworld_07, s:underworld_03]]
let s:p.normal.warning = [[s:underworld_00, s:underworld_09]]

let s:p.tabline.left = [[s:underworld_06, s:underworld_02]]
let s:p.tabline.middle = [[s:underworld_07, s:underworld_01]]
let s:p.tabline.right = [[s:underworld_06, s:underworld_02]]
let s:p.tabline.tabsel = [[s:underworld_07, s:underworld_00]]

let s:p.insert.left = [[s:underworld_00, s:underworld_10], [s:underworld_07, s:underworld_03]]
let s:p.replace.left = [[s:underworld_00, s:underworld_09], [s:underworld_07, s:underworld_03]]
let s:p.visual.left = [[s:underworld_00, s:underworld_13], [s:underworld_07, s:underworld_03]]

let g:lightline#colorscheme#underworld#palette = lightline#colorscheme#flatten(s:p)
