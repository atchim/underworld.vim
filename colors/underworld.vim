hi clear
if exists('syntax_on') | syntax reset | endif
let g:colors_name = 'underworld'
let s:Hi = function('g:underworld#Hi')

"
" Diff
"

call s:Hi('diffAdded', 10)
hi! link diffFile Comment
call s:Hi('diffLine', 14)
call s:Hi('diffRemoved', 15)
call s:Hi('diffSubname', 13)

"
" HTML
"

hi! link htmlEndTag htmlTag
hi! link htmlTag Comment

"
" LSP
"

if has('nvim-0.5')
  " Default
  call s:Hi('LspDiagnosticsDefaultError', 15)
  call s:Hi('LspDiagnosticsDefaultHint', 8)
  call s:Hi('LspDiagnosticsDefaultInformation', 10)
  call s:Hi('LspDiagnosticsDefaultWarning', 9)

  " Sign
  hi! link LspDiagnosticsSignError LspDiagnosticsDefaultError
  hi! link LspDiagnosticsSignHint LspDiagnosticsDefaultHint
  hi! link LspDiagnosticsSignInformation LspDiagnosticsDefaultInformation
  hi! link LspDiagnosticsSignWarning LspDiagnosticsDefaultWarning
endif

"
" Syntax
"

" Basic
call s:Hi('Comment', 6)
call s:Hi('Normal', 7, 0)

" Constant
call s:Hi('Character', 10)
call s:Hi('Constant', 8)
call s:Hi('Number', 9)
hi! link String Character

" Keyword
call s:Hi('Identifier', 12)
call s:Hi('Preproc', 15)
call s:Hi('Statement', 14)
call s:Hi('Type', 13)

" Special
call s:Hi('Special', 11)
call s:Hi('Todo', 11, -1, 'bold')
call s:Hi('Underlined', -1, -1, 'underline')

"
" Terminal
"

let s:range = range(16)
let s:term = [0, 15, 10, 8, 12, 13, 11, 5, 4, 15, 10, 9, 12, 14, 11, 7]

if has('nvim')
  for s:i in s:range
    let g:terminal_color_{s:i} = g:underworld#palette[s:term[s:i]][1]
  endfor
elseif has('terminal')
  let g:terminal_ansi_colors = []

  for s:i in s:range
    call add(g:terminal_ansi_colors, g:underworld#palette[s:term[s:i]][1])
  endfor
endif

"
" UI
"

" Cursor
call s:Hi('CursorColumn', -1, 2)
hi! link CursorLine CursorColumn
call s:Hi('CursorLineNr', 6, -1, 'bold')

" Diff Mode
call s:Hi('DiffAdd', 0, 10, 'bold')
call s:Hi('DiffChange', 0, 8, 'bold')
call s:Hi('DiffDelete', 0, 15, 'bold')
call s:Hi('DiffText', 0, 9, 'bold')

" Mark
call s:Hi('ColorColumn', -1, 1)
hi! link FoldColumn LineNr
call s:Hi('Folded', 6, 2)
call s:Hi('LineNr', 5)
hi! link SignColumn LineNr

" Menu
call s:Hi('Pmenu', 6, 1)
call s:Hi('PmenuSBar', -1, 2)
call s:Hi('PmenuSel', 7, 2)
call s:Hi('PmenuThumb', -1, 3)
call s:Hi('WildMenu', 0, 6, 'bold')

" Message
call s:Hi('ErrorMsg', 15, -1, 'bold')
call s:Hi('MoreMsg', 10, -1, 'bold')
call s:Hi('Question', 8, -1, 'bold')
call s:Hi('WarningMsg', 9, -1, 'bold')

" Misc
call s:Hi('Conceal', 11, -1, 'italic')
call s:Hi('Directory', 14, -1, 'bold')
call s:Hi('Error', 0, 15, 'bold')
call s:Hi('Ignore')
call s:Hi('MatchParen', 14, 4, 'bold')
call s:Hi('NonText', 4, -1, 'bold')
call s:Hi('SpecialKey', 11, -1, 'italic')
call s:Hi('Title', 11, -1, 'bold')

" Search
call s:Hi('IncSearch', 13, -1, 'bold,reverse')
call s:Hi('Search', 9, 5, 'bold')
call s:Hi('Visual', -1, 3)

" Spell
call s:Hi('SpellBad', -1, -1, 'undercurl', 15)
call s:Hi('SpellCap', -1, -1, 'undercurl', 10)
call s:Hi('SpellLocal', -1, -1, 'undercurl', 9)
call s:Hi('SpellRare', -1, -1, 'undercurl', 8)

" Status Line
call s:Hi('StatusLine', 7, 2, 'bold')
call s:Hi('StatusLineNC', 5, 1)
call s:Hi('VertSplit', 4, 1)

" Tab
call s:Hi('TabLine', 6, 2)
call s:Hi('TabLineFill', -1, 1)
call s:Hi('TabLineSel', 7, 0, 'bold')

" Whitespace
if has('nvim') | call s:Hi('Whitespace', 5) | endif

"
" Vim
"

hi! link vimCommentTitle Todo
