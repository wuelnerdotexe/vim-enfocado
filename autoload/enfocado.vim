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
    let l:colors.bg_2 = ['#3b3b3b', 237]
    let l:colors.dim_0 = ['#777777', 243]
    let l:colors.fg_0 = ['#b9b9b9', 250]
    let l:colors.fg_1 = ['#dedede', 253]

    let l:colors.red = ['#ed4a46', 203]
    let l:colors.green = ['#70b433', 71]
    let l:colors.yellow = ['#dbb32d', 179]
    let l:colors.blue = ['#368aeb', 69]
    let l:colors.magenta = ['#eb6eb7', 205]
    let l:colors.cyan = ['#3fc5b7', 79]
    let l:colors.orange = ['#e67f43', 173]
    let l:colors.violet = ['#a580e2', 140]

    let l:colors.br_red = ['#ff5e56', 203]
    let l:colors.br_green = ['#83c746', 113]
    let l:colors.br_yellow = ['#efc541', 221]
    let l:colors.br_blue = ['#4f9cfe', 75]
    let l:colors.br_magenta = ['#ff81ca', 212]
    let l:colors.br_cyan = ['#56d8c9', 80]
    let l:colors.br_orange = ['#fa9153', 209]
    let l:colors.br_violet = ['#b891f5', 141]

    " Base background color.
    let l:colors.base = ['#000000', 16]

    " Pseudo transparency colors.
    let l:colors.blend_error = ['#462624', 'NONE']
    let l:colors.blend_hint = ['#233246', 'NONE']
    let l:colors.blend_info = ['#433a20', 'NONE']
    let l:colors.blend_warn = ['#453024', 'NONE']
    let l:colors.blend_added = ['#2c3326', 'NONE']
    let l:colors.blend_modified = ['#2c281b', 'NONE']
    let l:colors.blend_removed = ['#2e1e1d', 'NONE']
    let l:colors.blend_search = ['#62552e', 'NONE']
  else
    " Selenized white color scheme.
    let l:colors.bg_0 = ['#ffffff', 231]
    let l:colors.bg_1 = ['#ebebeb', 255]
    let l:colors.bg_2 = ['#cdcdcd', 252]
    let l:colors.dim_0 = ['#878787', 245]
    let l:colors.fg_0 = ['#474747', 238]
    let l:colors.fg_1 = ['#282828', 235]

    let l:colors.red = ['#d6000c', 160]
    let l:colors.green = ['#1d9700', 28]
    let l:colors.yellow = ['#c49700', 172]
    let l:colors.blue = ['#0064e4', 26]
    let l:colors.magenta = ['#dd0f9d', 91]
    let l:colors.cyan = ['#00ad9c', 37]
    let l:colors.orange = ['#d04a00', 166]
    let l:colors.violet = ['#7f51d6', 98]

    let l:colors.br_red = ['#bf0000', 124]
    let l:colors.br_green = ['#008400', 28]
    let l:colors.br_yellow = ['#af8500', 136]
    let l:colors.br_blue = ['#0054cf', 26]
    let l:colors.br_magenta = ['#c7008b', 162]
    let l:colors.br_cyan = ['#009a8a', 30]
    let l:colors.br_orange = ['#ba3700', 130]
    let l:colors.br_violet = ['#6b40c3', 61]

    " Base background color.
    let l:colors.base = l:colors.bg_1

    " Pseudo transparency colors.
    let l:colors.blend_error = ['#f2cccc', 'NONE']
    let l:colors.blend_hint = ['#ccddf5', 'NONE']
    let l:colors.blend_info = ['#efe7cc', 'NONE']
    let l:colors.blend_warn = ['#f1d7cc', 'NONE']
    let l:colors.blend_added = ['#e8f4e5', 'NONE']
    let l:colors.blend_modified = ['#f9f4e5', 'NONE']
    let l:colors.blend_removed = ['#fbe5e6', 'NONE']
    let l:colors.blend_search = ['#d9cca4', 'NONE']
  endif

  " Get Enfocado style.
  let g:enfocado_style = get(g:, 'enfocado_style', 'nature')

  " Style colors.
  if g:enfocado_style ==# 'nature'
    " Nature accent colors.
    let l:colors.accent_0 = l:colors.green
    let l:colors.accent_1 = l:colors.blue
    let l:colors.br_accent_0 = l:colors.br_green
    let l:colors.br_accent_1 = l:colors.br_blue

    " Nature builtin colors (neon colors).
    let l:colors.builtin_0 = l:colors.magenta
    let l:colors.builtin_1 = l:colors.violet
    let l:colors.br_builtin_0 = l:colors.br_magenta
    let l:colors.br_builtin_1 = l:colors.br_violet
  else
    " Neon accent colors.
    let l:colors.accent_0 = l:colors.magenta
    let l:colors.accent_1 = l:colors.violet
    let l:colors.br_accent_0 = l:colors.br_magenta
    let l:colors.br_accent_1 = l:colors.br_violet

    " Neon builtin colors (nature colors).
    let l:colors.builtin_0 = l:colors.green
    let l:colors.builtin_1 = l:colors.blue
    let l:colors.br_builtin_0 = l:colors.br_green
    let l:colors.br_builtin_1 = l:colors.br_blue
  endif

  " Colors return.
  return l:colors
endfunction

" A function is created to highlight the groups.
function enfocado#highlighter(group, attr, bg, fg, sp)
  execute 'highlight! '.a:group . ' ' .
        \ 'cterm='.a:attr[1] . ' ' . 'gui='.a:attr[0] . ' ' .
        \ 'ctermbg='.a:bg[1] . ' ' . 'guibg='.a:bg[0] . ' ' .
        \ 'ctermfg='.a:fg[1] . ' ' . 'guifg='.a:fg[0] . ' ' .
        \ 'guisp='.a:sp[0]
endfunction

" A function is created to check on-demand plugins.
function enfocado#pluginIsActivated(name, only_nvim)
  if (g:enfocado_plugins == ['none']) || (a:only_nvim && !has('nvim'))
    return 0
  elseif (a:only_nvim && has('nvim')) || !a:only_nvim
    if g:enfocado_plugins == ['all']
      return 1
    else
      return index(g:enfocado_plugins, a:name) >= 0 ? 1 : 0
    endif
  endif
endfunction

