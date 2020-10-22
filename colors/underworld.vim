" TITLE:   Underworld For Vim
" VERSION: 0.0
" AUTHOR:  atchim <atchim.gama.silva@gmail.com>
" URL:     https://github.com/atchim/underworld.vim

hi clear
syntax reset

hi Normal guibg=#000000 guifg=#959595
hi Comment guifg=#5a5a5a

" GUI {{{1

" Cursor {{{2
hi CursorColumn guibg=#121212
hi! link CursorLine CursorColumn
hi CursorLineNr gui=none guibg=#080808 guifg=#5a5a5a

" Diff Mode {{{2
hi DiffAdd guibg=#5ea55b guifg=#000000
hi DiffChange guibg=#b58e6c guifg=#000000
hi DiffDelete guibg=#cb7f95 guifg=#252525
hi DiffText guibg=#8d9c55 guifg=#000000

" Mark {{{2
hi ColorColumn guibg=#080808
hi! link FoldColumn LineNr
hi! link Folded FoldColumn
hi LineNr guibg=#080808 guifg=#383838
hi! link SignColumn LineNr

" Menu {{{2
hi Pmenu guibg=#121212 guifg=#5a5a5a
hi PmenuSBar guibg=#1a1a1a
hi PmenuSel guibg=#1a1a1a guifg=#959595
hi PmenuThumb guibg=#252525
hi WildMenu gui=bold guibg=#5a5a5a guifg=#000000

" Message {{{2
hi ErrorMsg gui=bold guibg=none guifg=#cb7f95
hi MoreMsg guifg=#5ea55b
hi Question guifg=#b58e6c
hi WarningMsg guifg=#8d9c55

" Search {{{2
hi IncSearch gui=bold guibg=#373737 guifg=#9a8ad7
hi Search gui=bold guibg=#373737 guifg=#8d9c55
hi Visual guibg=#1a1a1a

" Spell {{{2
hi SpellBad guisp=#cb7f95
hi SpellCap guisp=#5ea55b
hi SpellLocal guisp=#8d9c55
hi SpellRare guisp=#b58e6c

" Status Line {{{2
hi StatusLine gui=bold guibg=#121212 guifg=#959595
hi StatusLineNC gui=none guibg=#080808 guifg=#383838
hi VertSplit gui=none guibg=#080808 guifg=#252525

" Tabs {{{2
hi TabLine gui=none guibg=#080808 guifg=#383838
hi! link TabLineFill TabLine
hi TabLineSel guibg=#000000 guifg=#959595

" Misc {{{2
hi Conceal guibg=none guifg=#58a38d
hi Directory guifg=#c47bc7
hi Error guibg=#cb7f95 guifg=#000000
hi Ignore guifg=none
hi MatchParen guibg=#252525 guifg=#c47bc7
hi NonText guifg=#252525
hi SpecialKey guifg=#58a38d 
hi Title guifg=#58a38d

" Syntax {{{1

" Constants {{{2
hi Character guifg=#5ea55b
hi Constant guifg=#b58e6c
hi Number guifg=#8d9c55
hi! link String Character

" Keywords {{{2
hi Identifier guifg=#729abc
hi Preproc guifg=#c97ea6
hi Statement gui=none guifg=#c47bc7
hi Type gui=none guifg=#9a8ad7

" Special {{{2
hi Special guifg=#58a38d
hi Todo gui=bold guibg=none guifg=#58a38d
hi Underlined gui=underline guifg=none

" Specific {{{1

" CoC {{{2
hi CocBold gui=bold
hi! link CocUnderline Underlined

hi CocErrorFloat guifg=#cb7f95
hi CocInfoFloat guifg=#5ea55b
hi CocHintFloat guifg=#b58e6c
hi CocWarningFloat guifg=#8d9c55

hi CocErrorSign guibg=#080808 guifg=#cb7f95
hi CocInfoSign guibg=#080808 guifg=#5ea55b
hi CocHintSign guibg=#080808 guifg=#b58e6c
hi CocWarningSign guibg=#080808 guifg=#8d9c55

" Diff {{{2
hi diffAdded guifg=#5ea55b
hi! link diffFile Comment
hi diffLine guifg=#c47bc7
hi diffRemoved guifg=#cb7f95
hi diffSubname guifg=#9a8ad7

" fasm {{{2
hi! link fasmLabel Identifier
hi! link fasmNumber Number
hi! link fasmOperator Normal
hi! link fasmSymbol Normal

" Git Gutter {{{2
hi GitGutterAdd guibg=#080808 guifg=#5ea55b
hi GitGutterChange guibg=#080808 guifg=#8d9c55
hi GitGutterChangeDelete guibg=#080808 guifg=#b58e6c
hi GitGutterDelete guibg=#080808 guifg=#cb7f95

" NERDTree {{{2
hi! link NERDTreeBookmark Tag
hi! link NERDTreeClosable NERDTreeDir
hi NERDTreeCWD guifg=#c97ea6
hi NERDTreeDir guifg=#c47bc7
hi NERDTreeDirSlash guifg=#9a8ad7
hi NERDTreeFile guifg=#959595
hi! link NERDTreeOpenable NERDTreeDir

" Vim {{{2
hi! link vimCommentTitle Todo

" Terminal {{{1
if has('nvim') && exists('&termguicolors') && &termguicolors
	let g:terminal_color_0 = "#000000"
	let g:terminal_color_1 = "#cb7f95"
	let g:terminal_color_2 = "#5ea55b"
	let g:terminal_color_3 = "#b58e6c"
	let g:terminal_color_4 = "#729abc"
	let g:terminal_color_5 = "#9a8ad7"
	let g:terminal_color_6 = "#58a38b"
	let g:terminal_color_7 = "#383838"
	let g:terminal_color_8 = "#252525"
	let g:terminal_color_9 = "#cb7f95"
	let g:terminal_color_10 = "#5ea55b"
	let g:terminal_color_11 = "#8d9c55"
	let g:terminal_color_12 = "#729abc"
	let g:terminal_color_13 = "#c47bc7"
	let g:terminal_color_14 = "#58a38b"
	let g:terminal_color_15 = "#959595"

	let g:terminal_color_background = g:terminal_color_0
	let g:terminal_color_foreground = g:terminal_color_15
endif
" }}}1

let g:colors_name = 'underworld'
