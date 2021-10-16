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

" The theme does not apply if it is not supported.
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Selenized black colorscheme (termguicolors && 256 cterm colors).
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

" Shadows.
let s:shadow     = [ '#000000', 0   ]

" Attributes. 
let s:none = [ 'NONE', 'NONE' ]
let s:reverse = [ 'reverse', 'reverse' ]
let s:bold = [ 'bold', 'bold' ]
let s:underline = [ 'underline', 'underline' ]
if has('gui_running') || $TERM_ITALICS == 'true'
  let s:bold_italic = [ 'bold,italic', 'bold,italic' ]
  let s:italic = [ 'italic', 'italic' ]
else
  let s:bold_italic = [ 'bold', 'bold' ]
  let s:italic = [ 'NONE', 'NONE' ]
endif

" Function for highlighting.
function! s:Hl(group, txt, bg, fg, sp)
    exe "hi ".a:group." gui=".a:txt[0]." cterm=".a:txt[0]." term=".a:txt[0]." guibg=".a:bg[0]." ctermbg=".a:bg[1]." guifg=".a:fg[0]." ctermfg=".a:fg[1]." guisp=".a:sp[1]
endfunction

" General.
call s:Hl("Normal", s:none, s:bg_0, s:fg_1, s:none)

" Interface elements.
if version >= 700
  call s:Hl("CursorColumn", s:none, s:bg_1, s:none, s:none)
  call s:Hl("CursorLine", s:none, s:bg_1, s:none, s:none)
  call s:Hl("MatchParen", s:bold, s:bg_2, s:none, s:none)
  call s:Hl("Pmenu", s:none, s:bg_1, s:dim_0, s:none)
  call s:Hl("PmenuSbar", s:none, s:bg_2, s:bg_2, s:none)
  call s:Hl("PmenuSel", s:bold, s:bg_2, s:fg_1, s:none)
  call s:Hl("PmenuThumb", s:none, s:dim_0, s:dim_0, s:none)
  call s:Hl("TabLine", s:none, s:bg_1, s:bg_2, s:none)
  call s:Hl("TabLineFill", s:none, s:bg_1, s:bg_2, s:none)
  call s:Hl("TabLineSel", s:none, s:bg_0, s:dim_0, s:none)
endif


if version >= 703
  call s:Hl("ColorColumn", s:none, s:bg_1, s:none, s:none)
  call s:Hl("Conceal", s:none, s:none, s:dim_0, s:none)
  call s:Hl("CursorLineNr", s:none, s:bg_1, s:dim_0, s:none)
endif

call s:Hl("Directory", s:none, s:none, s:br_green, s:none)
call s:Hl("Error", s:bold, s:none, s:br_red, s:none)
call s:Hl("ErrorMsg", s:bold, s:none, s:br_red, s:none)
call s:Hl("FoldColumn", s:none, s:none, s:none, s:none)
call s:Hl("Folded", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("LineNr", s:none, s:none, s:bg_2, s:none)
call s:Hl("MsgArea", s:none, s:none, s:dim_0, s:none)
call s:Hl("ModeMsg", s:bold, s:none, s:fg_1, s:none)
call s:Hl("MoreMsg", s:none, s:none, s:green, s:none)
call s:Hl("NonText", s:none, s:none, s:bg_2, s:none)
call s:Hl("Question", s:bold, s:none, s:br_yellow, s:none)
call s:Hl("QuickFixLine", s:bold, s:bg_2, s:none, s:none)
call s:Hl("SignColumn", s:none, s:none, s:none, s:none)
call s:Hl("SpecialKey", s:none, s:none, s:bg_2, s:none)
call s:Hl("StatusLine", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("StatusLineNC", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("StatusLineTerm", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("StatusLineTermNC", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("ToolbarButton", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("ToolbarLine", s:none, s:bg_2, s:bg_2, s:none)
call s:Hl("VertSplit", s:none, s:bg_1, s:bg_1, s:none)
call s:Hl("Visual", s:bold, s:bg_2, s:none, s:none)
call s:Hl("WarningMsg", s:bold, s:none, s:br_orange, s:none)
call s:Hl("WildMenu", s:bold, s:bg_1, s:fg_1, s:none)

" Spell check.
if has('spell')
  call s:Hl("SpellBad", s:underline, s:none, s:none, s:br_red)
  call s:Hl("SpellCap", s:underline, s:none, s:none, s:br_orange)
  call s:Hl("SpellLocal", s:underline, s:none, s:none, s:br_yellow)
  call s:Hl("SpellRare", s:underline, s:none, s:none, s:br_magenta)
endif

" Search.
call s:Hl("IncSearch", s:bold, s:br_cyan, s:bg_1, s:none)
call s:Hl("Search", s:bold, s:br_green, s:bg_1, s:none)

" Diff code.
call s:Hl("DiffAdd", s:bold, s:none, s:br_green, s:none)
call s:Hl("DiffChange", s:bold, s:none, s:br_yellow, s:none)
call s:Hl("DiffDelete", s:bold, s:none, s:br_red, s:none)
call s:Hl("DiffText", s:bold, s:br_yellow, s:bg_1, s:none)

" Main code syntax.
call s:Hl("Comment", s:none, s:none, s:dim_0, s:none)
call s:Hl("Constant", s:none, s:none, s:fg_1, s:none)
call s:Hl("Identifier", s:none, s:none, s:br_green, s:none)
call s:Hl("Ignore", s:none, s:none, s:bg_1, s:none)
call s:Hl("PreProc", s:none, s:none, s:blue, s:none)
call s:Hl("Special", s:none, s:none, s:br_cyan, s:none)
call s:Hl("Statement", s:none, s:none, s:blue, s:none)
call s:Hl("Title", s:bold, s:none, s:br_blue, s:none)
call s:Hl("Todo", s:bold, s:yellow, s:bg_1, s:none)
call s:Hl("Type", s:none, s:none, s:blue, s:none)
call s:Hl("Underlined", s:underline, s:none, s:none, s:none)

" Vim terminal colors.
if has('*term_setansicolors')
  let g:terminal_ansi_colors = [
        \ s:bg_1[0],
        \ s:red[0],
        \ s:green[0],
        \ s:yellow[0],
        \ s:blue[0],
        \ s:magenta[0],
        \ s:cyan[0],
        \ s:fg_0[0],
        \ s:bg_2[0],
        \ s:br_red[0],
        \ s:br_green[0],
        \ s:br_yellow[0],
        \ s:br_blue[0],
        \ s:br_magenta[0],
        \ s:br_cyan[0],
        \ s:fg_1[0]
      \ ]
endif

" Only Neovim.
if has('nvim')
  " Terminal colors.
  let g:terminal_color_0 = s:bg_1[0]
  let g:terminal_color_1 = s:red[0]
  let g:terminal_color_2 = s:green[0]
  let g:terminal_color_3 = s:yellow[0]
  let g:terminal_color_4 = s:blue[0]
  let g:terminal_color_5 = s:magenta[0]
  let g:terminal_color_6 = s:cyan[0]
  let g:terminal_color_7 = s:fg_0[0]
  let g:terminal_color_8 = s:bg_2[0]
  let g:terminal_color_9 = s:br_red[0]
  let g:terminal_color_10 = s:br_green[0]
  let g:terminal_color_11 = s:br_yellow[0]
  let g:terminal_color_12 = s:br_blue[0]
  let g:terminal_color_13 = s:br_magenta[0]
  let g:terminal_color_14 = s:br_cyan[0]
  let g:terminal_color_15 = s:fg_1[0]

  " Cursors.
  call s:Hl("Cursor", s:bold, s:dim_0, s:none, s:none)
  call s:Hl("iCursor", s:bold, s:br_yellow, s:none, s:none)
  call s:Hl("vCursor", s:bold, s:bg_2, s:none, s:none)
  call s:Hl("lCursor", s:bold, s:dim_0, s:none, s:none)
  call s:Hl("TermCursor", s:bold, s:dim_0, s:none, s:none)

  " Float windows.
  call s:Hl("FloatShadow", s:none, s:shadow, s:shadow, s:none)
  call s:Hl("FloatShadowThrough", s:none, s:shadow, s:shadow, s:none)

  " Neovim errors.
  call s:Hl("NvimInternalError", s:bold, s:none, s:br_red, s:none)

  " Debug redraws.
  call s:Hl("RedrawDebugClear", s:none, s:br_orange, s:bg_1, s:none)
  call s:Hl("RedrawDebugComposed", s:none, s:br_green, s:bg_1, s:none)
  call s:Hl("RedrawDebugNormal", s:reverse, s:none, s:none, s:none)
  call s:Hl("RedrawDebugRecompose", s:none, s:br_red, s:bg_1, s:none)

  " Treesitter msg alerts.
  highlight! link TSDanger  ErrorMsg
  highlight! link TSWarning WarningMsg

  " Treesitter human text.
  call s:Hl("TSAnnotation", s:italic, s:none, s:blue, s:none)
  call s:Hl("TSBoolean", s:italic, s:none, s:fg_1, s:none)
  call s:Hl("TSComment", s:italic, s:none, s:dim_0, s:none)
  call s:Hl("TSLiteral", s:italic, s:none, s:fg_1, s:none)
  call s:Hl("TSMethod", s:italic, s:none, s:br_green, s:none)
  call s:Hl("TSNote", s:italic, s:none, s:br_cyan, s:none)
  call s:Hl("TSTextReference", s:italic, s:none, s:fg_1, s:none)
  call s:Hl("TSTitle", s:bold_italic, s:none, s:br_blue, s:none)
endif

