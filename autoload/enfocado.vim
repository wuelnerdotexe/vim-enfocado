" -----------------------------------------------------------------------------
" Name:        Enfocado for Vim
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How themes should be.
" About:       Enfocado is more than a theme, it is a concept of 'how themes
"              should be', focusing on what is really important to developers:
"              the code and nothing else.
" -----------------------------------------------------------------------------

" A funcref is created to get the color scheme based on the vim background.
function! enfocado#getColorScheme()
  " Colors are initialized.
  let l:colors = {}

" Dark or light scheme is initialized.
  if &background ==# 'dark'
    " Selenized black color scheme.
    let l:colors.bg_0 = ['#181818', 234]
    let l:colors.bg_1 = ['#252525', 235]
    let l:colors.bg_2 = ['#3B3B3B', 237]
    let l:colors.dim_0 = ['#777777', 243]
    let l:colors.fg_0 = ['#B9B9B9', 250]
    let l:colors.fg_1 = ['#DEDEDE', 253]

    let l:colors.red = ['#ED4A46', 203]
    let l:colors.green = ['#70B433', 71]
    let l:colors.yellow = ['#DBB32D', 179]
    let l:colors.blue = ['#368AEB', 69]
    let l:colors.magenta = ['#EB6EB7', 205]
    let l:colors.cyan = ['#3FC5B7', 79]
    let l:colors.orange = ['#E67F43', 173]
    let l:colors.violet = ['#A580E2', 140]

    let l:colors.br_red = ['#FF5E56', 203]
    let l:colors.br_green = ['#83C746', 113]
    let l:colors.br_yellow = ['#EFC541', 221]
    let l:colors.br_blue = ['#4F9CFE', 75]
    let l:colors.br_magenta = ['#FF81CA', 212]
    let l:colors.br_cyan = ['#56D8C9', 80]
    let l:colors.br_orange = ['#FA9153', 209]
    let l:colors.br_violet = ['#B891F5', 141]

    " Base color is initialized.
    let l:colors.base = ['#000000', 16]

    " Colors return.
    return l:colors
  elseif &background  ==# 'light'
    " Selenized white color scheme.
    let l:colors.bg_0 = ['#FFFFFF', 231]
    let l:colors.bg_1 = ['#EBEBEB', 255]
    let l:colors.bg_2 = ['#CDCDCD', 252]
    let l:colors.dim_0 = ['#878787', 245]
    let l:colors.fg_0 = ['#474747', 238]
    let l:colors.fg_1 = ['#282828', 235]

    let l:colors.red = ['#D6000C', 160]
    let l:colors.green = ['#1D9700', 28]
    let l:colors.yellow = ['#C49700', 172]
    let l:colors.blue = ['#0064E4', 26]
    let l:colors.magenta = ['#DD0F9D', 91]
    let l:colors.cyan = ['#00AD9C', 37]
    let l:colors.orange = ['#D04A00', 166]
    let l:colors.violet = ['#7F51D6', 98]

    let l:colors.br_red = ['#BF0000', 124]
    let l:colors.br_green = ['#008400', 28]
    let l:colors.br_yellow = ['#AF8500', 136]
    let l:colors.br_blue = ['#0054CF', 26]
    let l:colors.br_magenta = ['#C7008B', 162]
    let l:colors.br_cyan = ['#009A8A', 30]
    let l:colors.br_orange = ['#BA3700', 130]
    let l:colors.br_violet = ['#6B40C3', 61]

    " Base color is initialized.
    let l:colors.base = l:colors.bg_1

    " Colors return.
    return l:colors
  endif
endfunction
