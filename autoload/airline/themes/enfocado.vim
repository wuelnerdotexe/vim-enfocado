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

" Selenized black colorscheme (termguicolors).
let s:colors_gui = {
    \ 'black'         : '#252525',
    \ 'red'           : '#ED4A46',
    \ 'green'         : '#70B433',
    \ 'yellow'        : '#DBB32D',
    \ 'blue'          : '#368AEB',
    \ 'purple'        : '#EB6EB7',
    \ 'cyan'          : '#3FC5B7',
    \ 'white'         : '#B9B9B9',
    \ 'bright_black'  : '#3B3B3B',
    \ 'bright_red'    : '#FF5E56',
    \ 'bright_green'  : '#83C746',
    \ 'bright_yellow' : '#EFC541',
    \ 'bright_blue'   : '#4F9CFE',
    \ 'bright_purple' : '#FF81CA',
    \ 'bright_cyan'   : '#56D8C9',
    \ 'bright_white'  : '#DEDEDE',
    \ 'background'    : '#181818',
    \ 'foreground'    : '#DEDEDE',
    \ 'dim'           : '#777777',
    \ 'orange'        : '#E67F43',
    \ 'violet'        : '#A580E2',
    \ 'bright_orange' : '#FA9153',
    \ 'bright_violet' : '#B891F5'
    \ }

" Enfocado black colorscheme (256 cterm colors).
let s:colors_term = {
    \ 'black'         : 235,
    \ 'red'           : 203,
    \ 'green'         : 107,
    \ 'yellow'        : 179,
    \ 'blue'          : 69,
    \ 'purple'        : 205,
    \ 'cyan'          : 79,
    \ 'white'         : 250,
    \ 'bright_black'  : 237,
    \ 'bright_red'    : 203,
    \ 'bright_green'  : 113,
    \ 'bright_yellow' : 221,
    \ 'bright_blue'   : 75,
    \ 'bright_purple' : 212,
    \ 'bright_cyan'   : 80,
    \ 'bright_white'  : 253,
    \ 'background'    : 234,
    \ 'foreground'    : 253,
    \ 'dim'           : 243,
    \ 'orange'        : 173,
    \ 'violet'        : 140,
    \ 'bright_orange' : 209,
    \ 'bright_violet' : 141
    \ }

" Text types.
let s:text_types = {
    \ 'bold' : 'bold'
    \ }

" Airline name theme.
let g:airline#themes#enfocado#palette = { }

" Accent colors.
let g:airline#themes#enfocado#palette.accents = {
  \ 'red': [ s:colors_gui.bright_red, '', s:colors_term.bright_red, '' ]
\ }

" Normal mode.
let s:airline_a_normal = [ s:colors_gui.black, s:colors_gui.dim,          s:colors_term.black, s:colors_term.dim          ]
let s:airline_b_normal = [ s:colors_gui.dim,   s:colors_gui.bright_black, s:colors_term.dim,   s:colors_term.bright_black ]
let s:airline_c_normal = [ s:colors_gui.dim,   s:colors_gui.black,        s:colors_term.dim,   s:colors_term.black        ]
let g:airline#themes#enfocado#palette.normal = airline#themes#generate_color_map(
  \ s:airline_a_normal, s:airline_b_normal, s:airline_c_normal
\ )

" Insert mode.
let s:airline_a_insert = [ s:colors_gui.black, s:colors_gui.bright_yellow, s:colors_term.black, s:colors_term.bright_yellow ]
let s:airline_b_insert = [ s:colors_gui.dim,   s:colors_gui.bright_black,  s:colors_term.dim,   s:colors_term.bright_black  ]
let s:airline_c_insert = [ s:colors_gui.dim,   s:colors_gui.black,         s:colors_term.dim,   s:colors_term.black         ] 
let g:airline#themes#enfocado#palette.insert = airline#themes#generate_color_map(
  \ s:airline_a_insert, s:airline_b_insert, s:airline_c_insert
\ )

" Visual mode.
let s:airline_a_visual = [ s:colors_gui.black,        s:colors_gui.dim,   s:colors_term.black,        s:colors_term.dim   ]
let s:airline_b_visual = [ s:colors_gui.bright_black, s:colors_gui.black, s:colors_term.bright_black, s:colors_term.black ]
let s:airline_c_visual = [ s:colors_gui.bright_black, s:colors_gui.black, s:colors_term.bright_black, s:colors_term.black ]
let g:airline#themes#enfocado#palette.visual = airline#themes#generate_color_map(
  \ s:airline_a_visual, s:airline_b_visual, s:airline_c_visual
\ )

" Command mode.
let s:airline_a_commandline = [ s:colors_gui.black, s:colors_gui.dim,          s:colors_term.black, s:colors_term.dim          ]
let s:airline_b_commandline = [ s:colors_gui.dim,   s:colors_gui.bright_black, s:colors_term.dim,   s:colors_term.bright_black ]
let s:airline_c_commandline = [ s:colors_gui.dim,   s:colors_gui.black,        s:colors_term.dim,   s:colors_term.black        ]
let g:airline#themes#enfocado#palette.commandline = airline#themes#generate_color_map(
  \ s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline
\ )

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
let s:airline_a_inactive = [ s:colors_gui.dim, s:colors_gui.black, s:colors_term.dim, s:colors_term.black, '' ]
let s:airline_b_inactive = [ s:colors_gui.dim, s:colors_gui.black, s:colors_term.dim, s:colors_term.black, '' ]
let s:airline_c_inactive = [ s:colors_gui.dim, s:colors_gui.black, s:colors_term.dim, s:colors_term.black, '' ]
let g:airline#themes#enfocado#palette.inactive = airline#themes#generate_color_map(
  \ s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive
\ )
" -----------------------------------------------------------------------------
" Error & Warning colors.
let s:airline_error   = [ s:colors_gui.black, s:colors_gui.bright_red,    s:colors_term.black, s:colors_term.bright_red,    '' ]
let s:airline_warning = [ s:colors_gui.black, s:colors_gui.bright_orange, s:colors_term.black, s:colors_term.bright_orange, '' ]

" Error & Warning in normal mode.
let g:airline#themes#enfocado#palette.normal.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.normal.airline_warning = s:airline_warning

" Error & Warning in insert mode.
let g:airline#themes#enfocado#palette.insert.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.insert.airline_warning = s:airline_warning

" Error & Warning in visual mode.
let g:airline#themes#enfocado#palette.visual.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.visual.airline_warning = s:airline_warning

" Error & Warning in insert (paste) mode.
let g:airline#themes#enfocado#palette.insert_paste.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.insert_paste.airline_warning = s:airline_warning

" Error & Warning in replace mode.
let g:airline#themes#enfocado#palette.replace.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.replace.airline_warning = s:airline_warning

" Error & Warning in terminal mode.
let g:airline#themes#enfocado#palette.terminal.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.terminal.airline_warning = s:airline_warning

" Error & Warning in commandline mode.
let g:airline#themes#enfocado#palette.commandline.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.commandline.airline_warning = s:airline_warning

" Error & Warning in inactive mode.
let g:airline#themes#enfocado#palette.inactive.airline_error   = s:airline_error
let g:airline#themes#enfocado#palette.inactive.airline_warning = s:airline_warning
