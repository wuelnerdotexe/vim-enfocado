" vim: fileencoding=utf-8 tabstop=2 shiftwidth=2 foldlevel=0 foldmethod=marker:
" -----------------------------------------------------------------------------
" Name:        Enfocado for Lightline
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

" The Enfocado Lightline theme is initialized.
let s:p = {
  \ 'normal' : {}, 'inactive' : {}, 'insert' : {},
  \ 'replace' : {}, 'visual' : {}, 'tabline' : {}
\ }

" Normal mode.
let s:p.normal.left    = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ] ]
let s:p.normal.middle  = [ [ s:dim_0, s:bg_0 ] ]
let s:p.normal.right   = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ], [ s:dim_0, s:bg_0 ] ]
let s:p.normal.error   = [ [ s:bg_1, s:br_red ] ]
let s:p.normal.warning = [ [ s:bg_1, s:br_orange ] ]

" Insert mode.
let s:p.insert.left    = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ] ]
let s:p.insert.middle  = [ [ s:dim_0, s:bg_0 ] ]
let s:p.insert.right   = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ], [ s:dim_0, s:bg_0 ] ]

" Visual mode.
let s:p.visual.left    = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ] ]
let s:p.visual.middle  = [ [ s:dim_0, s:bg_0 ] ]
let s:p.visual.right   = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ], [ s:dim_0, s:bg_0 ] ]

" Replace mode.
let s:p.replace.left    = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ] ]
let s:p.replace.middle  = [ [ s:dim_0, s:bg_0 ] ]
let s:p.replace.right   = [ [ s:dim_0, s:bg_2, s:bold ], [ s:dim_0, s:bg_1 ], [ s:dim_0, s:bg_0 ] ]

" Inactive mode.
let s:p.inactive.letf  = [ [ s:bg_2 , s:bg_1 ], [ s:bg_2, s:bg_1 ], [ s:bg_2, s:bg_1 ] ]
let s:p.inactive.right = [ [ s:bg_2 , s:bg_1 ], [ s:bg_2, s:bg_1 ], [ s:bg_2, s:bg_1 ] ]

" Tabline.
let s:p.tabline.left   = [ [ s:dim_0, s:bg_0 ] ]
let s:p.tabline.middle = [ [ s:dim_0, s:bg_0 ] ]
let s:p.tabline.right  = [ [ s:dim_0, s:bg_1 ] ]
let s:p.tabline.tabsel = [ [ s:dim_0, s:bg_2, s:bold ] ]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#flatten(s:p)
