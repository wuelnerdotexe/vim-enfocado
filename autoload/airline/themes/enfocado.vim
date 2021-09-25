" -----------------------------------------------------------------------------
" Name:     VIM ENFOCADO (Airline Theme)
" Author:   Wuelner Martínez <wuelnerdotexe@gmail.com>
" URL:      https://github.com/wuelnerdotexe/vim-enfocado
" License:  MIT. Copyright (C) 2021 Wuelner Martínez.
" About:    How the themes should be.
" -----------------------------------------------------------------------------
" Philosophy:
" I decided to create this theme, because all the themes I had
" used were built to be attractive, but not entirely useful. This is how
" ENFOCADO was born, the topic that focuses only on what is important for
" programmers, the code and nothing else." - Wuelner Martínez.
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

" Airline name theme.
let g:airline#themes#enfocado#palette = { }

" Accent colors.
let g:airline#themes#enfocado#palette.accents = {
  \ 'red': [ s:bright_red, '', 160, '' ]
\ }

" Normal mode.
let s:airline_a_normal     = [ s:background, s:dim,           17,  190 ]
let s:airline_b_normal     = [ s:dim, 	     s:bright_black,  255, 238 ]
let s:airline_c_normal     = [ s:dim,        s:black,         85,  234 ]
let s:airline_warn_normal  = [ s:black,      s:bright_orange, 232, 166 ]
let s:airline_error_normal = [ s:black,      s:bright_red,    232, 160 ]
let g:airline#themes#enfocado#palette.normal = airline#themes#generate_color_map(
  \ s:airline_a_normal, s:airline_b_normal, s:airline_c_normal
\ )
let g:airline#themes#enfocado#palette.normal.airline_warning = s:airline_warn_normal
let g:airline#themes#enfocado#palette.normal.airline_error   = s:airline_error_normal

" Insert mode.
let s:airline_a_insert     = [ s:background, s:bright_yellow, 17,  45  ]
let s:airline_b_insert     = [ s:dim,        s:bright_black,  255, 47  ]
let s:airline_c_insert     = [ s:dim,        s:black, 	      15,  17  ] 
let s:airline_warn_insert  = [ s:black,      s:bright_orange, 232, 166 ]
let s:airline_error_insert = [ s:black, s:bright_red,         232, 160 ]
let g:airline#themes#enfocado#palette.insert = airline#themes#generate_color_map(
  \ s:airline_a_insert, s:airline_b_insert, s:airline_c_insert
\ )
let g:airline#themes#enfocado#palette.insert.airline_warning = s:airline_warn_insert
let g:airline#themes#enfocado#palette.insert.airline_error   = s:airline_error_insert

" Visual mode.
let s:airline_a_visual     = [ s:background,    s:dim,           232, 214 ]
let s:airline_b_visual     = [ s:bright_black,  s:black,         232, 202 ]
let s:airline_c_visual     = [ s:bright_black,  s:black,         15,  52  ]
let s:airline_warn_visual  = [ s:black,         s:bright_orange, 232, 166 ]
let s:airline_error_visual = [ s:black,         s:bright_red,    232, 160 ]
let g:airline#themes#enfocado#palette.visual = airline#themes#generate_color_map(
  \ s:airline_a_visual, s:airline_b_visual, s:airline_c_visual
\ )
let g:airline#themes#enfocado#palette.visual.airline_warning = s:airline_warn_visual
let g:airline#themes#enfocado#palette.visual.airline_error   = s:airline_error_visual

" Command mode.
let s:airline_a_commandline     = [ s:background, s:dim,           17,  40  ]
let s:airline_b_commandline     = [ s:dim,        s:bright_black,  255, 238 ]
let s:airline_c_commandline     = [ s:dim, 	  s:black, 	   85,  234 ]
let s:airline_warn_commandline  = [ s:black,      s:bright_orange, 232, 166 ]
let s:airline_error_commandline = [ s:black,      s:bright_red,    232, 160 ]
let g:airline#themes#enfocado#palette.commandline = airline#themes#generate_color_map(
  \ s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline
\ )
let g:airline#themes#enfocado#palette.commandline.airline_warning = s:airline_warn_commandline
let g:airline#themes#enfocado#palette.commandline.airline_error   = s:airline_error_commandline

" Insert (paste) mode.
let g:airline#themes#enfocado#palette.insert_paste = {
  \ 'airline_a' : [ s:airline_a_insert[0], s:airline_a_insert[1], s:airline_a_insert[2], s:airline_a_insert[3], '' ]
\ }

" Replace mode.
let g:airline#themes#enfocado#palette.replace = copy( g:airline#themes#enfocado#palette.insert )
let g:airline#themes#enfocado#palette.replace.airline_a = [
  \ s:airline_a_insert[0], s:airline_a_insert[1], s:airline_a_insert[2], s:airline_a_insert[3], ''
\ ]

" Terminal mode.
let g:airline#themes#enfocado#palette.terminal = airline#themes#generate_color_map(
  \ s:airline_a_insert, s:airline_b_insert, s:airline_c_insert
\ )

" Inactive mode.
let s:airline_a_inactive     = [ s:dim,   s:black,         239, 234, '' ]
let s:airline_b_inactive     = [ s:dim,   s:black,         239, 235, '' ]
let s:airline_c_inactive     = [ s:dim,   s:black,         239, 236, '' ]
let s:airline_warn_inactive  = [ s:black, s:bright_orange, 232, 166, '' ]
let s:airline_error_inactive = [ s:black, s:bright_red,    232, 160, '' ]
let g:airline#themes#enfocado#palette.inactive = airline#themes#generate_color_map(
  \ s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive
\ )
let g:airline#themes#enfocado#palette.inactive.airline_warning = s:airline_warn_inactive
let g:airline#themes#enfocado#palette.inactive.airline_error   = s:airline_error_inactive

