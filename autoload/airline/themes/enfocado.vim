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

" The Enfocado Airline theme is initialized.
let g:airline#themes#enfocado#palette = {}

" Accent colors.
let g:airline#themes#enfocado#palette.accents = {
  \ 'red': [s:br_red[0], '', s:br_red[1], '']
  \ }

" Normal mode.
let g:airline#themes#enfocado#palette.normal =
      \ airline#themes#generate_color_map(
        \ [s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1], ''],
        \ [s:dim_0[0], s:bg_1[0], s:dim_0[1], s:bg_1[1], ''],
        \ [s:dim_0[0], s:bg_0[0], s:dim_0[1], s:bg_0[1], '']
        \ )

" Insert mode.
let g:airline#themes#enfocado#palette.insert = copy(g:airline#themes#enfocado#palette.normal)

" Replace mode.
let g:airline#themes#enfocado#palette.replace = copy(g:airline#themes#enfocado#palette.normal)

" Terminal mode.
let g:airline#themes#enfocado#palette.terminal = copy(g:airline#themes#enfocado#palette.normal)

" Visual mode.
let g:airline#themes#enfocado#palette.visual = copy(g:airline#themes#enfocado#palette.normal)

" Inactive mode.
let g:airline#themes#enfocado#palette.inactive =
      \ airline#themes#generate_color_map(
        \ [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], ''],
        \ [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], ''],
        \ [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], '']
        \ )

" Error & Warning colors.
let s:airline_error = [s:bg_1[0], s:br_red[0], s:bg_1[1], s:br_red[1], '']
let s:airline_warning = [s:bg_1[0], s:br_orange[0], s:bg_1[1], s:br_orange[1], '']

" Error & Warning in normal mode.
let g:airline#themes#enfocado#palette.normal.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.normal.airline_warning = s:airline_warning

" Error & Warning in insert mode.
let g:airline#themes#enfocado#palette.insert.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.insert.airline_warning = s:airline_warning

" Error & Warning in replace mode.
let g:airline#themes#enfocado#palette.replace.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.replace.airline_warning = s:airline_warning

" Error & Warning in terminal mode.
let g:airline#themes#enfocado#palette.terminal.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.terminal.airline_warning = s:airline_warning

" Error & Warning in visual mode.
let g:airline#themes#enfocado#palette.visual.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.visual.airline_warning = s:airline_warning

" Error & Warning in inactive mode.
let g:airline#themes#enfocado#palette.inactive.airline_error = s:airline_error
let g:airline#themes#enfocado#palette.inactive.airline_warning = s:airline_warning
