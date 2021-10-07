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
" ENFOCADO was born, the topic that focuses only on what is important for
" programmers, the code and nothing else.
" -----------------------------------------------------------------------------
" Features:
" - Focused on coding and nothing more than coding.
" - Use of well-founded Selenized black color scheme. Learn more about the
"   project in https://github.com/jan-warchol/selenized
" - Use of only three nature-inspired colors (Blue, Cyan, & Green) for
"   syntax highlighting.
" - The important colors (Orange & Red) are reserved for important alerts only,
"   as they should be.
" - What is not important, is Black & White, truly minimalist.
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

" Selenized black colorscheme (termguicolors && 256 cterm colors).
let s:black         = [ '#252525', 235 ]
let s:red           = [ '#ED4A46', 203 ]
let s:green         = [ '#70B433', 107 ]
let s:yellow        = [ '#DBB32D', 179 ]
let s:blue          = [ '#368AEB', 69  ]
let s:purple        = [ '#EB6EB7', 205 ]
let s:cyan          = [ '#3FC5B7', 79  ]
let s:white         = [ '#B9B9B9', 250 ]
let s:bright_black  = [ '#3B3B3B', 237 ]
let s:bright_red    = [ '#FF5E56', 203 ]
let s:bright_green  = [ '#83C746', 113 ]
let s:bright_yellow = [ '#EFC541', 221 ]
let s:bright_blue   = [ '#4F9CFE', 75  ]
let s:bright_purple = [ '#FF81CA', 212 ]
let s:bright_cyan   = [ '#56D8C9', 80  ]
let s:bright_white  = [ '#DEDEDE', 253 ]
let s:background    = [ '#181818', 234 ]
let s:foreground    = [ '#DEDEDE', 253 ]
let s:dim           = [ '#777777', 243 ]
let s:orange        = [ '#E67F43', 173 ]
let s:violet        = [ '#A580E2', 140 ]
let s:bright_orange = [ '#FA9153', 209 ]
let s:bright_violet = [ '#B891F5', 141 ]

" Text types.
let s:bold = 'bold'

" Lightline modes.
let s:p = {
  \ 'normal' : { }, 'inactive' : { }, 'insert' : { },
  \ 'replace' : { }, 'visual' : { }, 'tabline' : { }
\ }

" Normal mode.
let s:p.normal.left    = [ [ s:black, s:dim, s:bold ], [ s:dim, s:black ] ]
let s:p.normal.middle  = [ [ s:dim, s:black ] ]
let s:p.normal.right   = [ [ s:black, s:dim, s:bold ], [ s:dim, s:bright_black ], [ s:dim, s:black ] ]
let s:p.normal.error   = [ [ s:black, s:bright_red ] ]
let s:p.normal.warning = [ [ s:black, s:bright_orange ] ]

" Insert mode.
let s:p.insert.left    = [ [ s:black, s:bright_yellow, s:bold ], [ s:dim, s:black ] ]
let s:p.insert.middle  = [ [ s:dim, s:black ] ]
let s:p.insert.right   = [ [ s:black, s:bright_yellow, s:bold ], [ s:dim, s:bright_black ], [ s:dim, s:black ] ]

" Visual mode.
let s:p.visual.left    = [ [ s:black, s:dim, s:bold ], [ s:bright_black, s:black ] ]
let s:p.visual.middle  = [ [ s:bright_black, s:black ] ]
let s:p.visual.right   = [ [ s:black, s:dim, s:bold ], [ s:bright_black, s:black ], [ s:bright_black, s:black ] ]

" Replace mode.
let s:p.replace.left   = [ [ s:black, s:bright_yellow, s:bold ], [ s:dim, s:black ] ]
let s:p.replace.middle = [ [ s:dim, s:black ] ]
let s:p.replace.right  = [ [ s:black, s:bright_yellow, s:bold ], [ s:dim, s:bright_black ], [ s:dim, s:black ] ]

" Inactive mode.
let s:p.inactive.letf  = [ [ s:dim , s:black ], [ s:dim, s:black ], [ s:dim, s:black ] ]
let s:p.inactive.right = [ [ s:dim , s:black ], [ s:dim, s:black ], [ s:dim, s:black ] ]

" Tabline.
let s:p.tabline.left   = [ [ s:dim, s:black ] ]
let s:p.tabline.middle = [ [ s:dim, s:black ] ]
let s:p.tabline.right  = [ [ s:dim, s:bright_black ] ]
let s:p.tabline.tabsel = [ [ s:black, s:dim, s:bold ] ]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#flatten(s:p)
