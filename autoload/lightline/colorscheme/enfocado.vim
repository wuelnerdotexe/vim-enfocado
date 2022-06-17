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
let s:scheme = enfocado#getScheme()

" The scheme to use are assigned.
let s:bg_0 = s:scheme.bg_0
let s:bg_1 = s:scheme.bg_1
let s:bg_2 = s:scheme.bg_2
let s:dim_0 = s:scheme.dim_0
let s:fg_0 = s:scheme.fg_0
let s:fg_1 = s:scheme.fg_1

let s:red = s:scheme.red
let s:green = s:scheme.green
let s:yellow = s:scheme.yellow
let s:blue = s:scheme.blue
let s:magenta = s:scheme.magenta
let s:cyan = s:scheme.cyan
let s:orange = s:scheme.orange
let s:violet = s:scheme.violet

let s:br_red = s:scheme.br_red
let s:br_green = s:scheme.br_green
let s:br_yellow = s:scheme.br_yellow
let s:br_blue = s:scheme.br_blue
let s:br_magenta = s:scheme.br_magenta
let s:br_cyan = s:scheme.br_cyan
let s:br_orange = s:scheme.br_orange
let s:br_violet = s:scheme.br_violet

" The Enfocado Lightline theme is initialized.
let s:palette = {
  \ 'normal': {}, 'inactive': {}, 'insert': {},
  \ 'replace': {}, 'visual': {}, 'tabline': {}
  \ }

" Normal mode.
let s:palette.normal.left = [[s:dim_0, s:bg_2, 'bold'], [s:dim_0, s:bg_1]]
let s:palette.normal.middle = [[s:dim_0, s:bg_0]]
let s:palette.normal.right = [[s:dim_0, s:bg_2, 'bold'], [s:dim_0, s:bg_1], [s:dim_0, s:bg_0]]

" Insert mode.
let s:palette.insert.left = copy(s:palette.normal.left)
let s:palette.insert.middle = copy(s:palette.normal.middle)
let s:palette.insert.right = copy(s:palette.normal.right)

" Visual mode.
let s:palette.visual.left = copy(s:palette.normal.left)
let s:palette.visual.middle = copy(s:palette.normal.middle)
let s:palette.visual.right = copy(s:palette.normal.right)

" Replace mode.
let s:palette.replace.left = copy(s:palette.normal.left)
let s:palette.replace.middle = copy(s:palette.normal.middle)
let s:palette.replace.right = copy(s:palette.normal.right)

" Inactive mode.
let s:palette.inactive.letf = [[s:bg_2 , s:bg_1], [s:bg_2, s:bg_1], [s:bg_2, s:bg_1]]
let s:palette.inactive.right = [[s:bg_2 , s:bg_1], [s:bg_2, s:bg_1], [s:bg_2, s:bg_1]]

" Tabline.
let s:palette.tabline.left = [[s:dim_0, s:bg_0]]
let s:palette.tabline.middle = [[s:dim_0, s:bg_0]]
let s:palette.tabline.right = [[s:dim_0, s:bg_1]]
let s:palette.tabline.tabsel = [[s:dim_0, s:bg_2, 'bold']]

" Alerts.
let s:palette.normal.error = [[s:bg_1, s:br_red]]
let s:palette.normal.warning = [[s:bg_1, s:br_orange]]

" Lightline name theme.
let g:lightline#colorscheme#enfocado#palette = lightline#colorscheme#flatten(s:palette)
