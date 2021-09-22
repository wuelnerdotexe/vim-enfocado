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

" Airline name theme.
let g:airline#themes#enfocado#palette = { }

" Accent colors.
let g:airline#themes#enfocado#palette.accents = {
  \ 'red': [ s:bright_red, '', 160, '' ]
\ }

" Normal mode.
let s:airline_a_normal = [ s:bright_white, s:white,        17,  190 ]
let s:airline_b_normal = [ s:white, 	   s:bright_black, 255, 238 ]
let s:airline_c_normal = [ s:white,        s:black,        85,  234 ]
let g:airline#themes#enfocado#palette.normal = airline#themes#generate_color_map(
  \ s:airline_a_normal, s:airline_b_normal, s:airline_c_normal
\ )

" Insert mode.
let s:airline_a_insert = [ s:black,      s:green, 	 17,  45 ]
let s:airline_b_insert = [ s:white,      s:bright_black, 255, 47 ]
let s:airline_c_insert = [ s:white,      s:black, 	 15,  17 ] 
let g:airline#themes#enfocado#palette.insert = airline#themes#generate_color_map(
  \ s:airline_a_insert, s:airline_b_insert, s:airline_c_insert
\ )

" Visual mode.
let s:airline_a_visual = [ s:bright_white, s:white, 232 , 214 ]
let s:airline_b_visual = [ s:bright_black, s:black, 232 , 202 ]
let s:airline_c_visual = [ s:bright_black, s:black, 15  , 52  ]
let g:airline#themes#enfocado#palette.visual = airline#themes#generate_color_map(
  \ s:airline_a_visual, s:airline_b_visual, s:airline_c_visual
\ )

" Command mode.
let s:airline_a_commandline = [ s:bright_white, s:white,        17,  40  ]
let s:airline_b_commandline = [ s:white,        s:bright_black, 255, 238 ]
let s:airline_c_commandline = [ s:white, 	s:black, 	85,  234 ]
let g:airline#themes#enfocado#palette.commandline = airline#themes#generate_color_map(
  \ s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline
\ )

" Insert (paste) mode.
let g:airline#themes#enfocado#palette.insert_paste = {
  \ 'airline_a' : [ s:airline_a_insert[0], s:airline_a_insert[1], s:airline_a_insert[2], 172, '' ]
\ }

" Replace mode.
let g:airline#themes#enfocado#palette.replace = copy(g:airline#themes#enfocado#palette.insert)
let g:airline#themes#enfocado#palette.replace.airline_a = [
  \ s:airline_b_insert[0], s:airline_b_insert[1], s:airline_b_insert[2], 124, ''
\ ]

" Terminal mode.
let g:airline#themes#enfocado#palette.terminal = airline#themes#generate_color_map(
  \ s:airline_a_insert, s:airline_b_insert, s:airline_c_insert
\ )

" Inactive mode.
let s:airline_a_inactive = [ s:white, 	     s:black, 239, 234, '' ]
let s:airline_b_inactive = [ s:white,        s:black, 239, 235, '' ]
let s:airline_c_inactive = [ s:white,        s:black, 239, 236, '' ]
let g:airline#themes#enfocado#palette.inactive = airline#themes#generate_color_map(
  \ s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive
\ )

