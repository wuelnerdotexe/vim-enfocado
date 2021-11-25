" -----------------------------------------------------------------------------
" Name:        Enfocado for Airline
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How themes should be.
" About:       Enfocado is more than a theme, it is a concept of "how themes
"              should be", focusing on what is really important to developers:
"              the code and nothing else.
" -----------------------------------------------------------------------------

" The Selenized black color scheme is declared.
let s:bg_0       = [ '#181818', 234 ]
let s:bg_1       = [ '#252525', 235 ]
let s:bg_2       = [ '#3B3B3B', 237 ]
let s:dim_0      = [ '#777777', 243 ]
let s:fg_0       = [ '#B9B9B9', 250 ]
let s:fg_1       = [ '#DEDEDE', 253 ]
let s:red        = [ '#ED4A46', 203 ]
let s:green      = [ '#70B433', 107 ]
let s:yellow     = [ '#DBB32D', 179 ]
let s:blue       = [ '#368AEB', 69  ]
let s:magenta    = [ '#EB6EB7', 205 ]
let s:cyan       = [ '#3FC5B7', 79  ]
let s:orange     = [ '#E67F43', 173 ]
let s:violet     = [ '#A580E2', 140 ]
let s:br_red     = [ '#FF5E56', 203 ]
let s:br_green   = [ '#83C746', 113 ]
let s:br_yellow  = [ '#EFC541', 221 ]
let s:br_blue    = [ '#4F9CFE', 75  ]
let s:br_magenta = [ '#FF81CA', 212 ]
let s:br_cyan    = [ '#56D8C9', 80  ]
let s:br_orange  = [ '#FA9153', 209 ]
let s:br_violet  = [ '#B891F5', 141 ]

" Attributes are declared. 
let s:bold = 'bold'

" The Enfocado Airline theme is initialized.
let g:airline#themes#enfocado#palette = { }

" Accent colors.
let g:airline#themes#enfocado#palette.accents = {
  \ 'red': [ s:br_red[0], '', s:br_red[1], '' ]
\ }

" Normal mode.
let s:airline_a_normal = [ s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1] ]
let s:airline_b_normal = [ s:dim_0[0], s:bg_1[0], s:dim_0[1], s:bg_1[1] ]
let s:airline_c_normal = [ s:dim_0[0], s:bg_0[0], s:dim_0[1], s:bg_0[1] ]
let g:airline#themes#enfocado#palette.normal = airline#themes#generate_color_map(
  \ s:airline_a_normal, s:airline_b_normal, s:airline_c_normal
\ )

" Insert mode.
let s:airline_a_insert = [ s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1] ]
let s:airline_b_insert = [ s:dim_0[0], s:bg_1[0], s:dim_0[1], s:bg_1[1] ]
let s:airline_c_insert = [ s:dim_0[0], s:bg_0[0], s:dim_0[1], s:bg_0[1] ]
let g:airline#themes#enfocado#palette.insert = airline#themes#generate_color_map(
  \ s:airline_a_insert, s:airline_b_insert, s:airline_c_insert
\ )

" Visual mode.
let s:airline_a_visual = [ s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1] ]
let s:airline_b_visual = [ s:dim_0[0], s:bg_1[0], s:dim_0[1], s:bg_1[1] ]
let s:airline_c_visual = [ s:dim_0[0], s:bg_0[0], s:dim_0[1], s:bg_0[1] ]
let g:airline#themes#enfocado#palette.visual = airline#themes#generate_color_map(
  \ s:airline_a_visual, s:airline_b_visual, s:airline_c_visual
\ )

" Command mode.
let s:airline_a_commandline = [ s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1] ]
let s:airline_b_commandline = [ s:dim_0[0], s:bg_1[0], s:dim_0[1], s:bg_1[1] ]
let s:airline_c_commandline = [ s:dim_0[0], s:bg_0[0], s:dim_0[1], s:bg_0[1] ]
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
let s:airline_a_inactive = [ s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], '' ]
let s:airline_b_inactive = [ s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], '' ]
let s:airline_c_inactive = [ s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], '' ]
let g:airline#themes#enfocado#palette.inactive = airline#themes#generate_color_map(
  \ s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive
\ )

" Error & Warning colors.
let s:airline_error = [ s:bg_1[0], s:br_red[0], s:bg_1[1], s:br_red[1], '' ]
let s:airline_warning = [ s:bg_1[0], s:br_orange[0], s:bg_1[1], s:br_orange[1], '' ]

" Error & Warning in normal mode.
let g:airline#themes#enfocado#palette.normal.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.normal.airline_warning = s:airline_warning

" Error & Warning in insert mode.
let g:airline#themes#enfocado#palette.insert.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.insert.airline_warning = s:airline_warning

" Error & Warning in visual mode.
let g:airline#themes#enfocado#palette.visual.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.visual.airline_warning = s:airline_warning

" Error & Warning in commandline mode.
let g:airline#themes#enfocado#palette.commandline.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.commandline.airline_warning = s:airline_warning

" Error & Warning in insert (paste) mode.
let g:airline#themes#enfocado#palette.insert_paste.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.insert_paste.airline_warning = s:airline_warning

" Error & Warning in replace mode.
let g:airline#themes#enfocado#palette.replace.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.replace.airline_warning = s:airline_warning

" Error & Warning in terminal mode.
let g:airline#themes#enfocado#palette.terminal.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.terminal.airline_warning = s:airline_warning

" Error & Warning in inactive mode.
let g:airline#themes#enfocado#palette.inactive.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.inactive.airline_warning = s:airline_warning
