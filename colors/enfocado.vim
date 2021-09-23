" -----------------------------------------------------------------------------
" Name:     VIM ENFOCADO
" Author:   Wuelner Martínez <wuelnerdotexe@gmail.com>
" URL:      https://github.com/wuelnerdotexe/vim-enfocado
" License:  MIT. Copyright (C) 2021 Wuelner Martínez.
" About:    How the themes should be.
" -----------------------------------------------------------------------------
" Philosophy:
" I decided to create this theme, because all the themes I had
" used were built to be attractive, but not entirely useful. This is how
" VIM ENFOCADO was born, the topic that focuses only on what is important for
" programmers, the code and nothing else." - Wuelner Martínez.
" -----------------------------------------------------------------------------
" Features:
" - Focused on coding and nothing more than coding.
" - Use of well-founded Selenized Black color scheme. Learn more about the
"   project in https://github.com/jan-warchol/selenized
" - Syntax highlight inspired by VS Code's default dark+ theme.
" - The important colors (Red & Yellow) are reserved for important alerts only,
"   as they should be.
" - What is not important, is B&W, truly minimalist.
" -----------------------------------------------------------------------------
" Contributing:
" All your ideas and suggestions are welcome!
" Let me see your captures and know what you think with the
" hashtag #HowTheThemesShouldBe
" And of course, if you want to motivate me to constantly improve this topic,
" your donations are welcome at PayPal: https://paypal.me/wuelnerdotexe
" -----------------------------------------------------------------------------
"               CON AMOR <3 DE LATINOAMÉRICA PARA EL MUNDO.
" -----------------------------------------------------------------------------

" Encoding of this vim script.
scriptencoding utf-8

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
let s:foreground    = "#DEDEDE"
let s:black         = "#252525"
let s:red           = "#Ed4A46"
let s:green         = "#70B433"
let s:yellow        = "#DBB32D"
let s:blue          = "#368AEB"
let s:purple        = "#EB6EB7"
let s:cyan          = "#3FC5B7"
let s:orange        = "#E67F43"
let s:violet        = "#A580E2"
let s:bright_black  = "#3B3B3B"
let s:bright_red    = "#FF5E56"
let s:bright_green  = "#83C746"
let s:bright_yellow = "#EFC541"
let s:bright_blue   = "#4F9CFE"
let s:bright_purple = "#FF81CA"
let s:bright_cyan   = "#56D8C9"
let s:bright_orange = "#FA9153"
let s:bright_violet = "#B891F5"
let s:dim           = "#777777"

" Highlight variables.
let s:none          = "NONE"
let s:reverse       = "reverse"

" Text type variables.
let s:bold          = "bold"
let s:bold_italic   = "bold,italic"
let s:italic        = "italic"
let s:underline     = "underline"

" All environment.
exe "hi Normal                gui=".s:none."          guibg=".s:background."    guifg=".s:foreground

" Interface elements.
exe "hi ColorColumn           gui=".s:none."          guibg=".s:black."         guifg=".s:none
exe "hi Conceal               gui=".s:none."          guibg=".s:none."          guifg=".s:dim
exe "hi CursorColumn          gui=".s:none."          guibg=".s:black."         guifg=".s:none
exe "hi CursorLine            gui=".s:none."          guibg=".s:black."         guifg=".s:none
exe "hi CursorLineNr          gui=".s:bold."          guibg=".s:black."         guifg=".s:dim
exe "hi Directory             gui=".s:bold."          guibg=".s:none."          guifg=".s:cyan
exe "hi Error                 gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_red
exe "hi ErrorMsg              gui=".s:bold_italic."   guibg=".s:none."          guifg=".s:bright_red
exe "hi FoldColumn            gui=".s:bold."          guibg=".s:none."          guifg=".s:none
exe "hi Folded                gui=".s:italic."        guibg=".s:bright_black."  guifg=".s:dim
exe "hi LineNr                gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi ModeMsg               gui=".s:bold."          guibg=".s:none."          guifg=".s:foreground
exe "hi MoreMsg               gui=".s:none."          guibg=".s:none."          guifg=".s:green
exe "hi NonText               gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi Pmenu                 gui=".s:none."          guibg=".s:black."         guifg=".s:dim 
exe "hi PmenuSbar             gui=".s:none."          guibg=".s:bright_black."  guifg=".s:bright_black
exe "hi PmenuSel              gui=".s:bold."          guibg=".s:bright_black."  guifg=".s:foreground
exe "hi PmenuThumb            gui=".s:none."          guibg=".s:dim."           guifg=".s:dim
exe "hi Question              gui=".s:bold_italic."   guibg=".s:none."          guifg=".s:bright_yellow
exe "hi QuickFixLine          gui=".s:bold."          guibg=".s:bright_black."  guifg=".s:none
exe "hi SignColumn            gui=".s:bold."          guibg=".s:none."          guifg=".s:none
exe "hi SpecialKey            gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi StatusLine            gui=".s:none."          guibg=".s:bright_black."  guifg=".s:dim
exe "hi StatusLineNC          gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi StatusLineTerm        gui=".s:none."          guibg=".s:bright_black."  guifg=".s:dim
exe "hi StatusLineTermNC      gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi TabLine               gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi TabLineFill           gui=".s:none."          guibg=".s:black."         guifg=".s:bright_black
exe "hi TabLineSel            gui=".s:none."          guibg=".s:bright_black."  guifg=".s:dim
exe "hi ToolbarButton         gui=".s:none."          guibg=".s:bright_black."  guifg=".s:dim
exe "hi ToolbarLine           gui=".s:none."          guibg=".s:black."         guifg=".s:black
exe "hi VertSplit             gui=".s:none."          guibg=".s:black."         guifg=".s:black
exe "hi Visual                gui=".s:bold."          guibg=".s:bright_violet." guifg=".s:background
exe "hi WarningMsg            gui=".s:bold_italic."   guibg=".s:none."          guifg=".s:bright_orange
exe "hi WildMenu              gui=".s:bold."          guibg=".s:black."         guifg=".s:dim

" Spell check.
exe "hi SpellBad              gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_red
exe "hi SpellCap              gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_orange
exe "hi SpellLocal            gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_yellow
exe "hi SpellRare             gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:bright_purple

" Apply colorschemes to search.
exe "hi IncSearch             gui=".s:bold."          guibg=".s:bright_cyan."   guifg=".s:background
exe "hi Search                gui=".s:bold."          guibg=".s:bright_green."  guifg=".s:background

" Diff code.
exe "hi DiffAdd               gui=".s:none."          guibg=".s:none."          guifg=".s:green
exe "hi DiffChange            gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_yellow
exe "hi DiffDelete            gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_red
exe "hi DiffText              gui=".s:bold."          guibg=".s:bright_yellow." guifg=".s:background

" Main code syntax.
exe "hi Comment               gui=".s:italic."        guibg=".s:none."          guifg=".s:dim
exe "hi Constant              gui=".s:none."          guibg=".s:none."          guifg=".s:cyan
exe "hi Identifier            gui=".s:none."          guibg=".s:none."          guifg=".s:foreground
exe "hi Ignore                gui=".s:none."          guibg=".s:none."          guifg=".s:bright_black
exe "hi MatchParen            gui=".s:bold."          guibg=".s:bright_black."  guifg=".s:none
exe "hi PreProc               gui=".s:none."          guibg=".s:none."          guifg=".s:red
exe "hi Special               gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_purple
exe "hi Statement             gui=".s:none."          guibg=".s:none."          guifg=".s:red
exe "hi Title                 gui=".s:bold."          guibg=".s:none."          guifg=".s:background
exe "hi Todo                  gui=".s:bold."          guibg=".s:yellow."        guifg=".s:background
exe "hi Type                  gui=".s:none."          guibg=".s:none."          guifg=".s:red
exe "hi Underlined            gui=".s:underline."     guibg=".s:none."          guifg=".s:none."          guisp=".s:none

" Specific code syntax.
exe "hi Boolean               gui=".s:none."          guibg=".s:none."          guifg=".s:blue
exe "hi Float                 gui=".s:none."          guibg=".s:none."          guifg=".s:blue
exe "hi Function              gui=".s:bold."          guibg=".s:none."          guifg=".s:purple
exe "hi Number                gui=".s:none."          guibg=".s:none."          guifg=".s:blue
exe "hi Operator              gui=".s:none."          guibg=".s:none."          guifg=".s:foreground

" Vim / Neovim differences.
if has('nvim')

  " Cursors and visual selections.
  exe "hi Cursor                gui=".s:bold."          guibg=".s:bright_violet." guifg=".s:background
  exe "hi lCursor               gui=".s:bold."          guibg=".s:bright_violet." guifg=".s:background
  exe "hi TermCursor            gui=".s:bold."          guibg=".s:bright_violet." guifg=".s:background
  
  " Neovim exclusive.
  exe "hi FloatShadow           gui=".s:none."          guibg=".s:bright_black."  blend=80"
  exe "hi FloatShadowThrough    gui=".s:none."          guibg=".s:bright_black."  blend=100"
  exe "hi NvimInternalError     gui=".s:bold."          guibg=".s:none."          guifg=".s:bright_red
  exe "hi RedrawDebugClear      gui=".s:none."          guibg=".s:bright_orange." guifg=".s:background
  exe "hi RedrawDebugComposed   gui=".s:none."          guibg=".s:green."         guifg=".s:background
  exe "hi RedrawDebugNormal     gui=".s:reverse."       guibg=".s:none."          guifg=".s:none
  exe "hi RedrawDebugRecompose  gui=".s:none."          guibg=".s:bright_red."    guifg=".s:background

endif
