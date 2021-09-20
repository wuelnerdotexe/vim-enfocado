" -----------------------------------------------------------------------------
" Name:     VIM ENFOCADO
" Author:   Wuelner Martínez <wuelnerdotexe@gmail.com>
" URL:      https://github.com/wuelnerdotexe/vim-enfocado
" License:  MIT
" About:    Vim theme ENFOCADO with Selenized Black colorscheme.
" -----------------------------------------------------------------------------

" Encoding of this vim script.
set fileencoding=utf-8

" First check if the 'termguicolors' option has been activated.
if &termguicolors == 'notermguicolors'
  echoerr 'The colorscheme has not been applied because the
        \ "termguicolors" option has not been previously activated.'
  finish
endif

" Vim dark mode is activated.
set background=dark

" Remove all existing highlighting.
hi clear
if exists("syntax_on")
  syntax reset
endif

" Colorscheme name.
let g:colors_name   = "enfocado"

" Selenized black colorscheme.
let s:background    = "#181818"
let s:black         = "#252525"
let s:blue          = "#368AEB"
let s:cyan          = "#3FC5B7"
let s:green         = "#70B433"
let s:orange        = "#E67F43"
let s:purple        = "#A580E2"
let s:red           = "#Ed4A46"
let s:white         = "#777777"
let s:yellow        = "#DBB32D"
let s:bright_black  = "#3B3B3B"
let s:bright_blue   = "#4F9CFE"
let s:bright_cyan   = "#56D8C9"
let s:bright_green  = "#83C746"
let s:bright_purple = "#B891F5"
let s:bright_orange = "#FA9153"
let s:bright_red    = "#FF5E56"
let s:bright_white  = "#DEDEDE"
let s:bright_yellow = "#EFC541"

" Highlight variables.
let s:none          = "NONE"
let s:reverse       = "reverse"

" Text type variables.
let s:bold          = "bold"
let s:bold_italic   = "bold,italic"
let s:italic        = "italic"
let s:underline     = "underline"

" All environment.
exe "hi Normal                gui=".s:none."          guibg=".s:background."    guifg=".s:bright_white

" Interface elements.
exe "hi ColorColumn           gui=".s:none."          guibg=".s:black."         guifg=".s:none
exe "hi Conceal               gui=".s:none."          guibg=".s:none."          guifg=".s:white
exe "hi CursorColumn          gui=".s:none."          guibg=".s:black."         guifg=".s:none
exe "hi CursorLine            gui=".s:none."          guibg=".s:black."         guifg=".s:none
exe "hi CursorLineNr          gui=".s:bold."          guibg=".s:black."         guifg=".s:white
exe "hi Directory             gui=".s:bold."          guibg=".s:none."          guifg=".s:cyan
exe "hi Error                 gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_red
exe "hi ErrorMsg              gui=".s:bold_italic."   guibg=".s:none."          guifg=".s:bright_red
exe "hi FoldColumn            gui=".s:bold."          guibg=".s:none."          guifg=".s:none
exe "hi Folded                gui=".s:italic."        guibg=".s:bright_black."  guifg=".s:white
exe "hi LineNr                gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi ModeMsg               gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_green
exe "hi MoreMsg               gui=".s:none."          guibg=".s:none."          guifg=".s:bright_green
exe "hi NonText               gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi Pmenu                 gui=".s:none."          guibg=".s:black."         guifg=".s:white 
exe "hi PmenuSbar             gui=".s:none."          guibg=".s:bright_black."  guifg=".s:bright_black
exe "hi PmenuSel              gui=".s:bold."          guibg=".s:bright_black."  guifg=".s:bright_white
exe "hi PmenuThumb            gui=".s:none."          guibg=".s:white."         guifg=".s:white
exe "hi Question              gui=".s:bold_italic."   guibg=".s:none."          guifg=".s:bright_yellow
exe "hi QuickFixLine          gui=".s:bold."          guibg=".s:bright_black."  guifg=".s:none
exe "hi SignColumn            gui=".s:bold."          guibg=".s:none."          guifg=".s:none
exe "hi SpecialKey            gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi StatusLine            gui=".s:none."          guibg=".s:bright_black."  guifg=".s:white
exe "hi StatusLineNC          gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi StatusLineTerm        gui=".s:none."          guibg=".s:bright_black."  guifg=".s:white
exe "hi StatusLineTermNC      gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi TabLine               gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi TabLineFill           gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi TabLineSel            gui=".s:none."          guibg=".s:bright_black."  guifg=".s:white
exe "hi ToolbarButton         gui=".s:none."          guibg=".s:bright_black."  guifg=".s:white
exe "hi ToolbarLine           gui=".s:none."          guibg=".s:black."         guifg=".s:black
exe "hi VertSplit             gui=".s:none."          guibg=".s:black."         guifg=".s:black
exe "hi WarningMsg            gui=".s:bold_italic."   guibg=".s:none."          guifg=".s:bright_yellow
exe "hi WildMenu              gui=".s:bold."          guibg=".s:black."         guifg=".s:white

" Cursors and visual selections.
if has('nvim')

  exe "hi Cursor                gui=".s:reverse."       guibg=".s:none."          guifg=".s:none
  exe "hi lCursor               gui=".s:reverse."       guibg=".s:none."          guifg=".s:none
  exe "hi MatchParen            gui=".s:reverse."       guibg=".s:none."          guifg=".s:none
  exe "hi TermCursor            gui=".s:reverse."       guibg=".s:none."          guifg=".s:none
  exe "hi Visual                gui=".s:reverse."       guibg=".s:none."          guifg=".s:none

else

  exe "hi MatchParen            gui=".s:none."          guibg=".s:bright_black."  guifg=".s:none
  exe "hi Visual                gui=".s:none."          guibg=".s:bright_black."  guifg=".s:none

endif

" Spell check.
exe "hi SpellBad              gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_red
exe "hi SpellCap              gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_yellow
exe "hi SpellLocal            gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_blue
exe "hi SpellRare             gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_purple

" Apply colorschemes to search.
exe "hi IncSearch             gui=".s:bold_italic."   guibg=".s:white."         guifg=".s:bright_green
exe "hi Search                gui=".s:bold_italic."   guibg=".s:bright_black."  guifg=".s:bright_white

" Diff code.
exe "hi DiffAdd               gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_green
exe "hi DiffChange            gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_yellow
exe "hi DiffDelete            gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_red
exe "hi DiffText              gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_white

" Main code syntax.
exe "hi Comment               gui=".s:italic."        guibg=".s:none."          guifg=".s:white
exe "hi Constant              gui=".s:none."          guibg=".s:none."          guifg=".s:orange
exe "hi Identifier            gui=".s:bold."          guibg=".s:none."          guifg=".s:cyan
exe "hi Ignore                gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi PreProc               gui=".s:none."          guibg=".s:none."          guifg=".s:purple
exe "hi Special               gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_orange
exe "hi Statement             gui=".s:none."          guibg=".s:none."          guifg=".s:purple
exe "hi Title                 gui=".s:bold."          guibg=".s:none."          guifg=".s:blue
exe "hi Todo                  gui=".s:bold."          guibg=".s:yellow."        guifg=".s:bright_white
exe "hi Type                  gui=".s:none."          guibg=".s:none."          guifg=".s:blue
exe "hi Underlined            gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:none

" Specific code syntax.
exe "hi Boolean               gui=".s:none."          guibg=".s:none."          guifg=".s:blue
exe "hi Number                gui=".s:none."          guibg=".s:none."          guifg=".s:green
exe "hi Operator              gui=".s:none."          guibg=".s:none."          guifg=".s:bright_white
exe "hi StorageClass          gui=".s:none."          guibg=".s:none."          guifg=".s:bright_white
exe "hi Keyword               gui=".s:none."          guibg=".s:none."          guifg=".s:blue

" Neovim exclusive.
if has('nvim')

  exe "hi FloatShadow           gui=".s:none."          guibg=".s:bright_black."  blend=80"
  exe "hi FloatShadowThrough    gui=".s:none."          guibg=".s:bright_black."  blend=100"
  exe "hi NvimInternalError     gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_red
  exe "hi RedrawDebugClear      gui=".s:none."          guibg=".s:bright_yellow." guifg=".s:bright_white
  exe "hi RedrawDebugComposed   gui=".s:none."          guibg=".s:bright_green."  guifg=".s:bright_white
  exe "hi RedrawDebugNormal     gui=".s:reverse."       guibg=".s:none."          guifg=".s:none
  exe "hi RedrawDebugRecompose  gui=".s:none."          guibg=".s:bright_red."    guifg=".s:bright_white

endif
