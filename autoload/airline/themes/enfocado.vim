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
let s:colorScheme = enfocado#getColorScheme()

" The color scheme to use are assigned.
let s:bg_0 = s:colorScheme.bg_0
let s:bg_1 = s:colorScheme.bg_1
let s:bg_2 = s:colorScheme.bg_2
let s:dim_0 = s:colorScheme.dim_0

let s:red = s:colorScheme.red
let s:green = s:colorScheme.green
let s:yellow = s:colorScheme.yellow
let s:blue = s:colorScheme.blue
let s:orange = s:colorScheme.orange
let s:violet = s:colorScheme.violet

let s:br_red = s:colorScheme.br_red
let s:br_orange = s:colorScheme.br_orange

" The Enfocado Airline theme is initialized.
let g:airline#themes#enfocado#palette = {}

" Accent colors.
let g:airline#themes#enfocado#palette.accents = {
  \ 'red': [s:red[0], '', s:red[1], ''],
  \ 'green': [s:green[0], '', s:green[1], ''],
  \ 'yellow': [s:yellow[0], '', s:yellow[1], ''],
  \ 'blue': [s:blue[0], '', s:blue[1], ''],
  \ 'orange': [s:orange[0], '', s:orange[1], ''],
  \ 'purple': [s:violet[0], '', s:violet[1], ''],
  \ 'bold': [ '', '', '', '', 'bold' ],
  \ 'italic': [ '', '', '', '', 'italic' ],
  \ 'none': [ '', '', '', '', '' ]
  \ }

" Alert colors.
let s:term = [s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1], '']
let s:error = [s:bg_1[0], s:br_red[0], s:bg_1[1], s:br_red[1], '']
let s:warning = [s:bg_1[0], s:br_orange[0], s:bg_1[1], s:br_orange[1], '']

" Normal mode.
let g:airline#themes#enfocado#palette.normal =
      \ airline#themes#generate_color_map(
        \ [s:dim_0[0], s:bg_2[0], s:dim_0[1], s:bg_2[1], ''],
        \ [s:dim_0[0], s:bg_1[0], s:dim_0[1], s:bg_1[1], ''],
        \ [s:dim_0[0], s:bg_0[0], s:dim_0[1], s:bg_0[1], '']
        \ )

" Normal mode alerts.
let g:airline#themes#enfocado#palette.normal.airline_term = s:term
let g:airline#themes#enfocado#palette.normal.airline_error = s:error
let g:airline#themes#enfocado#palette.normal.airline_warning = s:warning

" Insert mode.
let g:airline#themes#enfocado#palette.insert = copy(g:airline#themes#enfocado#palette.normal)

" Insert mode alerts.
let g:airline#themes#enfocado#palette.insert.airline_term = s:term
let g:airline#themes#enfocado#palette.insert.airline_error = s:error
let g:airline#themes#enfocado#palette.insert.airline_warning = s:warning

" Replace mode.
let g:airline#themes#enfocado#palette.replace = copy(g:airline#themes#enfocado#palette.normal)

" Replace mode alerts.
let g:airline#themes#enfocado#palette.replace.airline_term = s:term
let g:airline#themes#enfocado#palette.replace.airline_error = s:error
let g:airline#themes#enfocado#palette.replace.airline_warning = s:warning

" Visual mode.
let g:airline#themes#enfocado#palette.visual = copy(g:airline#themes#enfocado#palette.normal)

" Visual mode alerts.
let g:airline#themes#enfocado#palette.visual.airline_term = s:term
let g:airline#themes#enfocado#palette.visual.airline_error = s:error
let g:airline#themes#enfocado#palette.visual.airline_warning = s:warning

" Inactive mode.
let g:airline#themes#enfocado#palette.inactive =
      \ airline#themes#generate_color_map(
        \ [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], ''],
        \ [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], ''],
        \ [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], '']
        \ )

" Inactive mode alerts.
let g:airline#themes#enfocado#palette.inactive.airline_term = [s:bg_2[0], s:bg_1[0], s:bg_2[1], s:bg_1[1], '']
let g:airline#themes#enfocado#palette.inactive.airline_error = [s:red[0], s:bg_1[0], s:red[1], s:bg_1[1], '']
let g:airline#themes#enfocado#palette.inactive.airline_warning = [s:orange[0], s:bg_1[0], s:orange[1], s:bg_1[1], '']
