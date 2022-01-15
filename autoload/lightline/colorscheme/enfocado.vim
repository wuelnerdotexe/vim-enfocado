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

" The Enfocado Lightline theme is initialized.
let s:palette = {
  \ 'normal' : { }, 'inactive' : { }, 'insert' : { },
  \ 'replace' : { }, 'visual' : { }, 'tabline' : { }
  \ }

" Normal mode.
let s:palette.normal.left   = [ [ s:dim_0, s:bg_2, 'bold' ], [ s:dim_0, s:bg_1 ] ]
let s:palette.normal.middle = [ [ s:dim_0, s:bg_0 ] ]
let s:palette.normal.right  = [ [ s:dim_0, s:bg_2, 'bold' ], [ s:dim_0, s:bg_1 ], [ s:dim_0, s:bg_0 ] ]

" Insert mode.
let s:palette.insert.left   = copy(s:palette.normal.left)
let s:palette.insert.middle = copy(s:palette.normal.middle)
let s:palette.insert.right  = copy(s:palette.normal.right)

" Visual mode.
let s:palette.visual.left   = copy(s:palette.normal.left)
let s:palette.visual.middle = copy(s:palette.normal.middle)
let s:palette.visual.right  = copy(s:palette.normal.right)

" Replace mode.
let s:palette.replace.left   = copy(s:palette.normal.left)
let s:palette.replace.middle = copy(s:palette.normal.middle)
let s:palette.replace.right  = copy(s:palette.normal.right)

" Inactive mode.
let s:palette.inactive.letf  = [ [ s:bg_2 , s:bg_1 ], [ s:bg_2, s:bg_1 ], [ s:bg_2, s:bg_1 ] ]
let s:palette.inactive.right = [ [ s:bg_2 , s:bg_1 ], [ s:bg_2, s:bg_1 ], [ s:bg_2, s:bg_1 ] ]

" Tabline.
let s:palette.tabline.left   = [ [ s:dim_0, s:bg_0 ] ]
let s:palette.tabline.middle = [ [ s:dim_0, s:bg_0 ] ]
let s:palette.tabline.right  = [ [ s:dim_0, s:bg_1 ] ]
let s:palette.tabline.tabsel = [ [ s:dim_0, s:bg_2, 'bold' ] ]

" Alerts.
let s:palette.normal.error   = [ [ s:bg_1, s:br_red ] ]
let s:palette.normal.warning = [ [ s:bg_1, s:br_orange ] ]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#flatten(s:palette)
