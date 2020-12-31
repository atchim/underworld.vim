hi clear
syntax reset

hi Normal guibg=#080808 guifg=#959595
hi Comment guifg=#5a5a5a

"
" GUI
"

" Cursor
hi CursorColumn guibg=#121212
hi! link CursorLine CursorColumn
hi CursorLineNr guifg=#5a5a5a

" Diff Mode
hi DiffAdd guibg=#5ea55b guifg=#080808
hi DiffChange guibg=#b58e6c guifg=#080808
hi DiffDelete guibg=#cb7f95 guifg=#252525
hi DiffText guibg=#8d9c55 guifg=#080808

" Mark
hi ColorColumn guibg=#0d0d0d
hi! link FoldColumn LineNr
hi Folded guibg=#121212 guifg=#5a5a5a
hi LineNr guifg=#383838
hi! link SignColumn LineNr

" Menu
hi Pmenu guibg=#0d0d0d guifg=#5a5a5a
hi PmenuSBar guibg=#121212
hi PmenuSel guibg=#121212 guifg=#959595
hi PmenuThumb guibg=#1a1a1a
hi WildMenu gui=bold guibg=#5a5a5a guifg=#080808

" Message
hi ErrorMsg gui=bold guibg=none guifg=#cb7f95
hi MoreMsg guifg=#5ea55b
hi Question guifg=#b58e6c
hi WarningMsg guifg=#8d9c55

" Search
hi IncSearch gui=bold guibg=#373737 guifg=#9a8ad7
hi Search gui=bold guibg=#373737 guifg=#8d9c55
hi Visual guibg=#1a1a1a

" Spell
hi SpellBad guisp=#cb7f95
hi SpellCap guisp=#5ea55b
hi SpellLocal guisp=#8d9c55
hi SpellRare guisp=#b58e6c

" Status Line
hi StatusLine gui=bold guibg=#121212 guifg=#959595
hi StatusLineNC gui=none guibg=#0d0d0d guifg=#383838
hi VertSplit gui=none guibg=#0d0d0d guifg=#252525

" Tab
hi TabLine gui=none guibg=#121212 guifg=#5a5a5a
hi TabLineFill gui=none guibg=#0d0d0d
hi TabLineSel guibg=#080808 guifg=#959595

" Misc
hi Conceal guibg=none guifg=#58a38d
hi Directory guifg=#c47bc7
hi Error guibg=#cb7f95 guifg=#080808
hi Ignore guifg=none
hi MatchParen guibg=#252525 guifg=#c47bc7
hi NonText guifg=#252525
hi SpecialKey guifg=#58a38d 
hi Title guifg=#58a38d

"
" Syntax
"

" Constant
hi Character guifg=#5ea55b
hi Constant guifg=#b58e6c
hi Number guifg=#8d9c55
hi! link String Character

" Keyword
hi Identifier guifg=#729abc
hi Preproc guifg=#c97ea6
hi Statement gui=none guifg=#c47bc7
hi Type gui=none guifg=#9a8ad7

" Special
hi Special guifg=#58a38d
hi Todo gui=bold guibg=none guifg=#58a38d
hi Underlined gui=underline guifg=none

"
" Terminal
"

if has('nvim')
  let g:terminal_color_0 = '#080808'
  let g:terminal_color_1 = '#cb7f95'
  let g:terminal_color_2 = '#5ea55b'
  let g:terminal_color_3 = '#b58e6c'
  let g:terminal_color_4 = '#729abc'
  let g:terminal_color_5 = '#9a8ad7'
  let g:terminal_color_6 = '#58a38b'
  let g:terminal_color_7 = '#383838'
  let g:terminal_color_8 = '#252525'
  let g:terminal_color_9 = '#cb7f95'
  let g:terminal_color_10 = '#5ea55b'
  let g:terminal_color_11 = '#8d9c55'
  let g:terminal_color_12 = '#729abc'
  let g:terminal_color_13 = '#c47bc7'
  let g:terminal_color_14 = '#58a38b'
  let g:terminal_color_15 = '#959595'

  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_15
endif

"
" CoC
"

hi CocBold gui=bold
hi! link CocUnderline Underlined

hi! link CocErrorFloat LspDiagnosticsDefaultError
hi! link CocHintFloat LspDiagnosticsDefaultHint
hi! link CocInfoFloat LspDiagnosticsDefaultInformation
hi! link CocWarningFloat LspDiagnosticsDefaultWarning

hi! link CocErrorSign LspDiagnosticsSignError
hi! link CocHintSign LspDiagnosticsSignHint
hi! link CocInfoSign LspDiagnosticsSignInformation
hi! link CocWarningSign LspDiagnosticsSignWarning

"
" Diff
"

hi diffAdded guifg=#5ea55b
hi! link diffFile Comment
hi diffLine guifg=#c47bc7
hi diffRemoved guifg=#cb7f95
hi diffSubname guifg=#9a8ad7

"
" fasm
"

hi! link fasmLabel Identifier
hi! link fasmNumber Number
hi! link fasmOperator Normal
hi! link fasmSymbol Normal

"
" GitGutter
"

hi GitGutterAdd guifg=#5ea55b
hi GitGutterChange guifg=#8d9c55
hi GitGutterChangeDelete guifg=#b58e6c
hi GitGutterDelete guifg=#cb7f95

"
" HTML
"

hi! link htmlEndTag htmlTag
hi! link htmlTag Comment

"
" LSP
"

hi LspDiagnosticsDefaultError guifg=#cb7f95
hi LspDiagnosticsDefaultHint guifg=#b58e6c
hi LspDiagnosticsDefaultInformation guifg=#5ea55b
hi LspDiagnosticsDefaultWarning guifg=#8d9c55

hi LspDiagnosticsSignError guifg=#cb7f95
hi LspDiagnosticsSignHint guifg=#b58e6c
hi LspDiagnosticsSignInformation guifg=#5ea55b
hi LspDiagnosticsSignWarning guifg=#8d9c55

"
" NERDTree
"

hi! link NERDTreeBookmark Tag
hi! link NERDTreeClosable NERDTreeDir
hi NERDTreeCWD guifg=#c97ea6
hi NERDTreeDir guifg=#c47bc7
hi NERDTreeDirSlash guifg=#9a8ad7
hi NERDTreeFile guifg=#959595
hi! link NERDTreeOpenable NERDTreeDir

"
" Vim
"

hi! link vimCommentTitle Todo

let g:colors_name = 'underworld'
