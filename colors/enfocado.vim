" -----------------------------------------------------------------------------
" Name:        Vim Enfocado
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How the themes should be.
" About:       Enfocado is more than a theme, it is a concept of "how the
"              themes should be", focusing on what is really important to
"              developers: the code and nothing else.
" -----------------------------------------------------------------------------

" Vim dark mode is activated.
set background=dark

" Remove all existing highlighting.
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" Colorscheme name.
let g:colors_name = "enfocado"

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Selenized black colorscheme (termguicolors).
let s:colors_gui = {
    \ 'black'         : '#252525',
    \ 'red'           : '#ED4A46',
    \ 'green'         : '#70B433',
    \ 'yellow'        : '#DBB32D',
    \ 'blue'          : '#368AEB',
    \ 'purple'        : '#EB6EB7',
    \ 'cyan'          : '#3FC5B7',
    \ 'white'         : '#B9B9B9',
    \ 'bright_black'  : '#3B3B3B',
    \ 'bright_red'    : '#FF5E56',
    \ 'bright_green'  : '#83C746',
    \ 'bright_yellow' : '#EFC541',
    \ 'bright_blue'   : '#4F9CFE',
    \ 'bright_purple' : '#FF81CA',
    \ 'bright_cyan'   : '#56D8C9',
    \ 'bright_white'  : '#DEDEDE',
    \ 'background'    : '#181818',
    \ 'foreground'    : '#DEDEDE',
    \ 'dim'           : '#777777',
    \ 'orange'        : '#E67F43',
    \ 'violet'        : '#A580E2',
    \ 'bright_orange' : '#FA9153',
    \ 'bright_violet' : '#B891F5'
    \ }

" Enfocado black colorscheme (256 cterm colors).
let s:colors_term = {
    \ 'black'         : 235,
    \ 'red'           : 203,
    \ 'green'         : 107,
    \ 'yellow'        : 179,
    \ 'blue'          : 69,
    \ 'purple'        : 205,
    \ 'cyan'          : 79,
    \ 'white'         : 250,
    \ 'bright_black'  : 237,
    \ 'bright_red'    : 203,
    \ 'bright_green'  : 113,
    \ 'bright_yellow' : 221,
    \ 'bright_blue'   : 75,
    \ 'bright_purple' : 212,
    \ 'bright_cyan'   : 80,
    \ 'bright_white'  : 253,
    \ 'background'    : 234,
    \ 'foreground'    : 253,
    \ 'dim'           : 243,
    \ 'orange'        : 173,
    \ 'violet'        : 140,
    \ 'bright_orange' : 209,
    \ 'bright_violet' : 141
    \ }

" Attributes. 
let s:attributes = {
    \ 'none'    : 'NONE',
    \ 'reverse' : 'reverse',
    \ }

" Text types.
let s:text_types = {
    \ 'bold'        : 'bold',
    \ 'bold_italic' : 'bold,italic',
    \ 'italic'      : 'italic',
    \ 'underline'   : 'underline'
    \ }

" All environment.
execute "highlight Normal                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.background."    guibg=".s:colors_gui.background."    ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground

" Interface elements.
if version >= 700
  execute "highlight CursorColumn          term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight CursorLine            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight MatchParen            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight Pmenu                 term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim 
  execute "highlight PmenuSbar             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
  execute "highlight PmenuSel              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
  execute "highlight PmenuThumb            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
  execute "highlight TabLine               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
  execute "highlight TabLineFill           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
  execute "highlight TabLineSel            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.background."    guibg=".s:colors_gui.background."    ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
endif

if version >= 703
  execute "highlight ColorColumn           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight Conceal               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
  execute "highlight CursorLineNr          term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
endif 

execute "highlight Directory             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
execute "highlight Error                 term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red
execute "highlight ErrorMsg              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red
execute "highlight FoldColumn            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none
execute "highlight Folded                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
execute "highlight LineNr                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
execute "highlight MsgArea               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
execute "highlight ModeMsg               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
execute "highlight MoreMsg               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.green."         guifg=".s:colors_gui.green
execute "highlight NonText               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
execute "highlight Question              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_yellow." guifg=".s:colors_gui.bright_yellow
execute "highlight QuickFixLine          term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
execute "highlight SignColumn            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none
execute "highlight SpecialKey            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
execute "highlight StatusLine            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
execute "highlight StatusLineNC          term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
execute "highlight StatusLineTerm        term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
execute "highlight StatusLineTermNC      term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
execute "highlight ToolbarButton         term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
execute "highlight ToolbarLine           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
execute "highlight VertSplit             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
execute "highlight Visual                term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
execute "highlight WarningMsg            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_orange." guifg=".s:colors_gui.bright_orange
execute "highlight WildMenu              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground

" Spell check.
if has('spell')
  execute "highlight SpellBad              term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_red
  execute "highlight SpellCap              term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_orange
  execute "highlight SpellLocal            term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_yellow
  execute "highlight SpellRare             term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_purple
endif

" Search.
execute "highlight IncSearch             term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_cyan."   guibg=".s:colors_gui.bright_cyan."   ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
execute "highlight Search                term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_green."  guibg=".s:colors_gui.bright_green."  ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black

" Diff code.
execute "highlight DiffAdd               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
execute "highlight DiffChange            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_yellow." guifg=".s:colors_gui.bright_yellow
execute "highlight DiffDelete            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red
execute "highlight DiffText              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_yellow." guibg=".s:colors_gui.bright_yellow." ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black

" Main code syntax.
execute "highlight Comment               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
execute "highlight Constant              term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
execute "highlight Identifier            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
execute "highlight Ignore                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
execute "highlight PreProc               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
execute "highlight Special               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_cyan."   guifg=".s:colors_gui.bright_cyan
execute "highlight Statement             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
execute "highlight Title                 term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_blue."   guifg=".s:colors_gui.bright_blue
execute "highlight Todo                  term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.yellow."        guibg=".s:colors_gui.yellow."        ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
execute "highlight Type                  term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
execute "highlight Underlined            term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:attributes.none

" Vim terminal colors.
if has('*term_setansicolors')
  let g:terminal_ansi_colors = [
        \ s:colors_gui.black,
        \ s:colors_gui.red,
        \ s:colors_gui.green,
        \ s:colors_gui.yellow,
        \ s:colors_gui.blue,
        \ s:colors_gui.purple,
        \ s:colors_gui.cyan,
        \ s:colors_gui.white,
        \ s:colors_gui.bright_black,
        \ s:colors_gui.bright_red,
        \ s:colors_gui.bright_green,
        \ s:colors_gui.bright_yellow,
        \ s:colors_gui.bright_blue,
        \ s:colors_gui.bright_purple,
        \ s:colors_gui.bright_cyan,
        \ s:colors_gui.bright_white
      \ ]
endif

" Only Neovim.
if has('nvim')

  " Terminal colors.
  let g:terminal_color_0  = s:colors_gui.black
  let g:terminal_color_1  = s:colors_gui.red
  let g:terminal_color_2  = s:colors_gui.green
  let g:terminal_color_3  = s:colors_gui.yellow
  let g:terminal_color_4  = s:colors_gui.blue
  let g:terminal_color_5  = s:colors_gui.purple
  let g:terminal_color_6  = s:colors_gui.cyan
  let g:terminal_color_7  = s:colors_gui.white
  let g:terminal_color_8  = s:colors_gui.bright_black
  let g:terminal_color_9  = s:colors_gui.bright_red
  let g:terminal_color_10 = s:colors_gui.bright_green
  let g:terminal_color_11 = s:colors_gui.bright_yellow
  let g:terminal_color_12 = s:colors_gui.bright_blue
  let g:terminal_color_13 = s:colors_gui.bright_purple
  let g:terminal_color_14 = s:colors_gui.bright_cyan
  let g:terminal_color_15 = s:colors_gui.bright_white

  " Cursors.
  execute "highlight Cursor                term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight iCursor               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_yellow." guibg=".s:colors_gui.bright_yellow." ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight vCursor               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight lCursor               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight TermCursor            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:attributes.none."           guifg=".s:attributes.none

  " Float windows.
  execute "highlight FloatShadow           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=0                               guibg=#000000                        blend=80"
  execute "highlight FloatShadowThrough    term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=0                               guibg=#000000                        blend=100"

  " Neovim errors.
  execute "highlight NvimInternalError     term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red

  " Debug redraws.
  execute "highlight RedrawDebugClear      term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_orange." guibg=".s:colors_gui.bright_orange." ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
  execute "highlight RedrawDebugComposed   term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_green."  guibg=".s:colors_gui.bright_green."  ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
  execute "highlight RedrawDebugNormal     term=".s:attributes.reverse."     cterm=".s:attributes.reverse."     gui=".s:attributes.reverse."     ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none
  execute "highlight RedrawDebugRecompose  term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_red."    guibg=".s:colors_gui.bright_red."    ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black

  " Treesitter msg alerts.
  highlight! link TSDanger  ErrorMsg
  highlight! link TSWarning WarningMsg

  " Treesitter human text.
  execute "highlight TSAnnotation          term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
  execute "highlight TSBoolean             term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
  execute "highlight TSComment             term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
  execute "highlight TSLiteral             term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
  execute "highlight TSMethod              term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
  execute "highlight TSNote                term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_cyan."   guifg=".s:colors_gui.bright_cyan
  execute "highlight TSTextReference       term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
  execute "highlight TSTitle               term=".s:text_types.bold_italic." cterm=".s:text_types.bold_italic." gui=".s:text_types.bold_italic." ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_blue."   guifg=".s:colors_gui.bright_blue

endif
