" -----------------------------------------------------------------------------
" Name:     VIM ENFOCADO (Lightline Theme)
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
" - Syntax highlight inspired by VS Code's default enfocado+ theme.
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

" Lightline modes.
let s:p = { 'normal' : { }, 'inactive' : { }, 'insert' : { },
  \ 'replace' : { }, 'visual' : { }, 'tabline' : { }
\ }

" Normal mode.
let s:p.normal.left    = [ [ s:background, s:dim, s:bold ], [ s:dim, s:black ] ]
let s:p.normal.middle  = [ [ s:dim, s:black ] ]
let s:p.normal.right   = [ [ s:background, s:dim, s:bold ], [ s:dim, s:bright_black ], [ s:dim, s:black ] ]
let s:p.normal.error   = [ [ s:black, s:bright_red ] ]
let s:p.normal.warning = [ [ s:black, s:bright_orange ] ]

" Insert mode.
let s:p.insert.left    = [ [ s:background, s:bright_yellow, s:bold ], [ s:dim, s:black ] ]
let s:p.insert.middle  = [ [ s:dim, s:black ] ]
let s:p.insert.right   = [ [ s:background, s:bright_yellow, s:bold ], [ s:dim, s:bright_black ], [ s:dim, s:black ] ]

" Visual mode.
let s:p.visual.left    = [ [ s:background, s:dim, s:bold ], [ s:bright_black, s:black ] ]
let s:p.visual.middle  = [ [ s:bright_black, s:black ] ]
let s:p.visual.right   = [ [ s:background, s:dim, s:bold ], [ s:bright_black, s:black ], [ s:bright_black, s:black ] ]

" Replace mode.
let s:p.replace.left   = s:p.insert.left
let s:p.replace.middle = s:p.insert.middle
let s:p.replace.right  = s:p.insert.right

" Inactive mode.
let s:p.inactive.right = [ [ s:dim , s:black ], [ s:dim, s:black ], [ s:dim, s:black ] ]
let s:p.inactive.left  = s:p.inactive.right[1:]

" Tabline.
let s:p.tabline.left   = [ [ s:dim, s:black ] ]
let s:p.tabline.tabsel = [ [ s:background, s:dim, s:bold ] ]
let s:p.tabline.middle = [ [ s:dim, s:black ] ]
let s:p.tabline.right  = [ [ s:dim, s:bright_black ] ]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#fill(s:p)
