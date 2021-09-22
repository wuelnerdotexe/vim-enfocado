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

" Lightline modes.
let s:p = { 'normal' : { }, 'inactive' : { }, 'insert' : { },
  \ 'replace' : { }, 'visual' : { }, 'tabline' : { }
\ }

" Normal mode.
let s:p.normal.left    = [ [ s:bright_white, s:white, 'bold' ], [ s:white, s:black ] ]
let s:p.normal.middle  = [ [ s:white, s:black ] ]
let s:p.normal.right   = [ [ s:bright_white, s:white, 'bold' ], [ s:white, s:bright_black ], [ s:white, s:black ] ]
let s:p.normal.error   = [ [ s:black, s:bright_red ] ]
let s:p.normal.warning = [ [ s:black, s:bright_yellow ] ]

" Insert mode.
let s:p.insert.left    = [ [ s:black, s:green, 'bold' ], [ s:white, s:black ] ]
let s:p.insert.middle  = [ [ s:white, s:black ] ]
let s:p.insert.right   = [ [ s:bright_white, s:white, 'bold' ], [ s:white, s:bright_black ], [ s:white, s:black ] ]

" Visual mode.
let s:p.visual.left    = [ [ s:bright_white, s:black, 'bold'], [ s:white, s:black ] ]
let s:p.visual.middle  = [ [ s:white, s:black ] ]
let s:p.visual.right   = [ [ s:bright_white, s:black, 'bold' ], [ s:white, s:black ], [ s:white, s:black ] ]

" Replace mode.
let s:p.replace.left   = s:p.normal.left
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right  = s:p.normal.right

" Inactive mode.
let s:p.inactive.right = [ [ s:white , s:black ], [ s:white, s:black ], [ s:white, s:black ] ]
let s:p.inactive.left  = s:p.inactive.right[1:]

" Tabline.
let s:p.tabline.left   = [ [ s:white, s:bright_black ] ]
let s:p.tabline.tabsel = [ [ s:bright_white, s:white, 'bold' ] ]
let s:p.tabline.middle = [ [ s:white, s:black ] ]
let s:p.tabline.right  = [ [ s:white, s:black ] ]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#fill(s:p)
