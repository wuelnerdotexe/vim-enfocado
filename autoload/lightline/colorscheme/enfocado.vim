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

" Get the color scheme.
let s:colorScheme = enfocado#getColorScheme()

" The color scheme to use are assigned.
let s:bg_0 = s:colorScheme.bg_0
let s:bg_1 = s:colorScheme.bg_1
let s:bg_2 = s:colorScheme.bg_2
let s:dim_0 = s:colorScheme.dim_0

let s:red = s:colorScheme.red
let s:yellow = s:colorScheme.yellow
let s:blue = s:colorScheme.blue
let s:orange = s:colorScheme.orange

let s:br_red = s:colorScheme.br_red
let s:br_yellow = s:colorScheme.br_yellow
let s:br_blue = s:colorScheme.br_blue
let s:br_orange = s:colorScheme.br_orange

" The Enfocado Lightline theme is initialized.
let s:p = { 'normal': { }, 'inactive': { }, 'tabline': { } }

" Normal mode.
let s:p.normal.left = [[s:dim_0, s:bg_2, 'bold'], [s:dim_0, s:bg_1], [s:dim_0, s:bg_0]]
let s:p.normal.middle = [[s:dim_0, s:bg_0]]
let s:p.normal.right = copy(s:p.normal.left)

" Normal mode components.
let s:p.normal.error = [[s:bg_1, s:br_red]]
let s:p.normal.warning = [[s:bg_1, s:br_orange]]
let s:p.normal.info = [[s:bg_1, s:br_yellow]]
let s:p.normal.hint = [[s:bg_1, s:br_blue]]

" Inactive mode.
let s:p.inactive.left = [[s:bg_2 , s:bg_1], [s:bg_2, s:bg_1], [s:bg_2, s:bg_1]]
let s:p.inactive.middle = [[s:bg_2 , s:bg_1]]
let s:p.inactive.right = copy(s:p.inactive.left)

" Inactive mode components.
let s:p.inactive.error = [[s:red, s:bg_1]]
let s:p.inactive.warning = [[s:orange, s:bg_1]]
let s:p.inactive.info = [[s:yellow, s:bg_1]]
let s:p.inactive.hint = [[s:blue, s:bg_1]]

" Tabline.
let s:p.tabline.left = [[s:dim_0, s:bg_1]]
let s:p.tabline.middle = [[s:dim_0, s:bg_0]]
let s:p.tabline.right = copy(s:p.tabline.left)

" Tabline components.
let s:p.tabline.tabsel = [[s:dim_0, s:bg_2]]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#flatten(s:p)
