" -----------------------------------------------------------------------------
" Name:     solarized-enfocado.vim
" Author:   Wuelner Martínez <wuelnerdotexe@gmail.com>
" URL:      https://github.com/wuelnerdotexe/dotfiles
" License:  MIT
" About:    Github bright theme for Vim and Neovim.
" -----------------------------------------------------------------------------

" First remove all existing highlighting.
hi clear
if exists("syntax_on")  
  syntax reset
endif

" Name theme.
let g:colors_name = "solarized-enfocado"

" Solarized colorschemes.
if &background == "light"

    let s:black = "#FDF6E3"
    let s:blue = "#268BD2"
    let s:bright_black = "#073642"
    let s:bright_blue = "#839496"
    let s:bright_cyan = "#93A1A1"
    let s:bright_green = "#586E75"
    let s:bright_purple = "#6C71C4"
    let s:bright_red = "#CB4B16"
    let s:bright_white = "#FDF6E3"
    let s:bright_yellow = "#657B83"
    let s:cyan = "#2AA198"
    let s:green = "#859900"
    let s:purple = "#D33682"
    let s:red = "#DC322F"
    let s:white = "#EEE8D5"
    let s:yellow = "#B58900"

elseif &background == "dark"

    let s:black = "#002B36"
    let s:blue = "#268BD2"
    let s:bright_black = "#073642"
    let s:bright_blue = "#839496"
    let s:bright_cyan = "#93A1A1"
    let s:bright_green = "#586E75"
    let s:bright_purple = "#6C71C4"
    let s:bright_red = "#CB4B16"
    let s:bright_white = "#FDF6E3"
    let s:bright_yellow = "#657B83"
    let s:cyan = "#2AA198"
    let s:green = "#859900"
    let s:purple = "#D33682"
    let s:red = "#DC322F"
    let s:white = "#EEE8D5"
    let s:yellow = "#B58900"

endif

exe "hi SpecialKey       term=bold ctermfg=9 guifg=".s:bright_red
exe "hi NonText          term=bold ctermfg=9 gui=bold guifg=".s:bright_red
exe "hi Directory        term=bold ctermfg=11 guifg=".s:bright_yellow
exe "hi ErrorMsg         term=standout ctermfg=15 ctermbg=4 guifg=".s:bright_white." guibg=".s:blue
exe "hi IncSearch        term=reverse cterm=reverse gui=reverse"
exe "hi Search           term=reverse ctermfg=0 ctermbg=14 guifg=".s:black." guibg=".s:bright_cyan
exe "hi MoreMsg          term=bold ctermfg=10 gui=bold guifg=".s:bright_green
exe "hi ModeMsg          term=bold cterm=bold gui=bold"
exe "hi LineNr           term=underline ctermfg=14 guifg=".s:bright_cyan
exe "hi LineNrAbove      ctermbg=0 guibg=".s:black
exe "hi LineNrBelow      ctermbg=0 guibg=".s:black
exe "hi CursorLineNr     term=bold cterm=underline ctermfg=14 gui=bold guifg=".s:bright_cyan
exe "hi Question         term=standout ctermfg=10 gui=bold guifg=".s:bright_green
exe "hi StatusLine       term=bold,reverse cterm=bold,reverse gui=bold,reverse"
exe "hi StatusLineNC     term=reverse cterm=reverse gui=reverse"
exe "hi VertSplit        term=reverse cterm=reverse gui=reverse"
exe "hi Title            term=bold ctermfg=13 gui=bold guifg=".s:bright_purple
exe "hi Visual           term=reverse ctermbg=8 guibg=".s:bright_black
exe "hi VisualNOS        term=bold,underline cterm=bold,underline gui=bold,underline"
exe "hi WarningMsg       term=standout ctermfg=12 guifg=".s:bright_blue
exe "hi WildMenu         term=standout ctermfg=0 ctermbg=14 guifg=".s:black." guibg=".s:bright_cyan
exe "hi Folded           term=standout ctermfg=11 ctermbg=8 guifg=".s:bright_yellow." guibg=".s:bright_black
exe "hi FoldColumn       term=standout ctermfg=11 ctermbg=8 guifg=".s:bright_yellow." guibg=".s:bright_black
exe "hi DiffAdd          term=bold ctermbg=1 guibg=".s:red
exe "hi DiffChange       term=bold ctermbg=5 guibg=".s:purple
exe "hi DiffDelete       term=bold ctermfg=9 ctermbg=3 gui=bold guifg=".s:bright_red." guibg=".s:yellow
exe "hi DiffText         term=reverse cterm=bold ctermbg=12 gui=bold guibg=".s:bright_blue
exe "hi SignColumn       term=standout ctermfg=11 ctermbg=8 guifg=".s:bright_yellow." guibg=".s:bright_black
exe "hi Conceal          ctermfg=7 ctermbg=8 guifg=".s:white." guibg="s:bright_black
exe "hi SpellBad         term=reverse ctermbg=12 gui=undercurl guisp=".s:bright_blue
exe "hi SpellCap         term=reverse ctermbg=9 gui=undercurl guisp=".s:bright_red
exe "hi SpellRare        term=reverse ctermbg=13 gui=undercurl guisp=".s:bright_purple
exe "hi SpellLocal       term=underline ctermbg=11 gui=undercurl guisp=".s:bright_yellow
exe "hi Pmenu            ctermfg=0 ctermbg=13 guifg=".s:black." guibg=".s:bright_purple
exe "hi PmenuSel         ctermfg=8 ctermbg=0 guifg=".s:white." guibg=".s:black
exe "hi PmenuSbar        ctermbg=7 guibg=".s:white
exe "hi PmenuThumb       ctermbg=15 guibg=".s:bright_white
exe "hi TabLine          term=underline cterm=underline ctermfg=15 ctermbg=8 gui=underline guifg=".s:bright_black." guibg=".s:bright_black
exe "hi TabLineSel       term=bold cterm=bold gui=bold"
exe "hi TabLineFill      term=reverse cterm=reverse gui=reverse"
exe "hi CursorColumn     term=reverse ctermbg=8 guibg=".s:bright_black
exe "hi CursorLine       term=underline cterm=underline"
exe "hi ColorColumn      term=reverse ctermbg=4 guibg=".s:blue
exe "hi StatusLineTerm   term=bold,reverse cterm=bold ctermfg=0 ctermbg=10 gui=bold guifg=".s:black." guibg=".s:bright_green
exe "hi StatusLineTermNC term=reverse ctermfg=0 ctermbg=10 guifg=".s:black." guibg=".s:bright_green
exe "hi Normal           ctermbg=0 guibg=".s:black
exe "hi MatchParen       term=reverse ctermbg=3 guibg=".s:yellow
exe "hi ToolbarLine      term=underline ctermbg=8 guibg=".s:bright_black
exe "hi ToolbarButton    cterm=bold ctermfg=0 ctermbg=7 gui=bold guifg=".s:black." guibg=".s:white
exe "hi Comment          term=bold ctermfg=11 guifg=".s:bright_yellow
exe "hi Constant         term=underline ctermfg=13 guifg=".s:bright_purple
exe "hi Special          term=bold ctermfg=12 guifg=".s:bright_blue
exe "hi Identifier       term=underline cterm=bold ctermfg=11 guifg=".s:bright_yellow
exe "hi Statement        term=bold ctermfg=14 gui=bold guifg=".s:bright_cyan
exe "hi PreProc          term=underline ctermfg=9 guifg=".s:bright_red
exe "hi Type             term=underline ctermfg=10 gui=bold guifg=".s:bright_green
exe "hi Underlined       term=underline cterm=underline ctermfg=9 gui=underline guifg=".s:bright_red
exe "hi Ignore           ctermfg=0 guifg=".s:black
exe "hi Error            term=reverse ctermfg=15 ctermbg=12 guifg=".s:bright_white." guibg=".s:bright_blue
exe "hi Todo             term=standout ctermfg=0 ctermbg=14 guifg=".s:black." guibg=".s:bright_cyan
