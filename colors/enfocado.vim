" ------------------------------------------------------------------------------
" Name:        Vim Enfocado
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How the themes should be.
" About:       Enfocado is more than a theme, it is a concept of "how the
"              themes should be", focusing on what is really important to
"              developers: the code and nothing else.
" ------------------------------------------------------------------------------

" The Enfocado theme is initialized.
let g:colors_name = "enfocado"

" The script ends if the theme is not supported.
if !(has('termguicolors') && &termguicolors)
      \ && !has('gui_running') && &t_Co != 256
  finish
endif

" Vim's dark mode is on.
set background=dark

" All highlights are removed.
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" The Selenized black color scheme is declared.
let s:shadow_0   = [ '#000000', 0   ]
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

" Attributes are declared. 
let s:none        = [ 'NONE'       , 'NONE'        ]
let s:reverse     = [ 'reverse'    , 'reverse'     ]
let s:bold        = [ 'bold'       , 'bold'        ]
let s:bold_italic = [ 'bold,italic', 'bold,italic' ]
let s:italic      = [ 'italic'     , 'italic'      ]
let s:underline   = [ 'underline'  , 'underline'   ]
let s:undercurl   = [ 'undercurl'  , 'undercurl'   ]

" A function is created to highlight the groups.
function! s:Hl(group, txt, bg, fg, sp)
    execute "highlight ".a:group.
          \ " gui=".a:txt[0]." cterm=".a:txt[0]." term=".a:txt[0].
          \ " guibg=".a:bg[0]." ctermbg=".a:bg[1].
          \ " guifg=".a:fg[0]." ctermfg=".a:fg[1]." guisp=".a:sp[0]
endfunction
" ------------------------------------------------------------------------------
" SECTION: Highlight groups.
" ------------------------------------------------------------------------------
" General vim groups.
call s:Hl("DiffAdd", s:bold, s:none, s:br_green, s:none)
call s:Hl("DiffChange", s:bold, s:none, s:br_yellow, s:none)
call s:Hl("DiffDelete", s:bold, s:none, s:br_red, s:none)
call s:Hl("DiffText", s:bold, s:br_yellow, s:bg_1, s:none)
call s:Hl("Directory", s:none, s:none, s:fg_0, s:none)
call s:Hl("ErrorMsg", s:bold, s:none, s:br_red, s:none)
call s:Hl("FoldColumn", s:none, s:none, s:none, s:none)
call s:Hl("Folded", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("Ignore", s:none, s:none, s:bg_1, s:none)
call s:Hl("IncSearch", s:bold, s:br_cyan, s:bg_1, s:none)
call s:Hl("LineNr", s:none, s:none, s:bg_2, s:none)
call s:Hl("MsgArea", s:none, s:none, s:dim_0, s:none)
call s:Hl("ModeMsg", s:bold, s:none, s:fg_1, s:none)
call s:Hl("MoreMsg", s:none, s:none, s:green, s:none)
call s:Hl("NonText", s:none, s:none, s:bg_2, s:none)
call s:Hl("Normal", s:none, s:bg_0, s:fg_1, s:none)
call s:Hl("Question", s:bold, s:none, s:br_yellow, s:none)
call s:Hl("QuickFixLine", s:bold, s:bg_2, s:none, s:none)
call s:Hl("Search", s:bold, s:br_green, s:bg_1, s:none)
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
if has('spell')
  call s:Hl("SpellBad", s:undercurl, s:none, s:none, s:br_red)
  call s:Hl("SpellCap", s:undercurl, s:none, s:none, s:br_orange)
  call s:Hl("SpellLocal", s:undercurl, s:none, s:none, s:br_yellow)
  call s:Hl("SpellRare", s:undercurl, s:none, s:none, s:br_magenta)
endif
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

" Terminal vim groups.
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

" Syntax general vim groups.
call s:Hl("Comment", s:none, s:none, s:dim_0, s:none)
call s:Hl("Constant", s:none, s:none, s:cyan, s:none)
call s:Hl("Error", s:bold, s:none, s:br_red, s:none)
call s:Hl("Identifier", s:none, s:none, s:green, s:none)
call s:Hl("PreProc", s:none, s:none, s:blue, s:none)
call s:Hl("Special", s:bold, s:none, s:blue, s:none)
call s:Hl("Statement", s:none, s:none, s:blue, s:none)
call s:Hl("Title", s:bold, s:none, s:br_blue, s:none)
call s:Hl("Todo", s:bold, s:yellow, s:bg_1, s:none)
call s:Hl("Type", s:none, s:none, s:blue, s:none)
call s:Hl("Underlined", s:underline, s:none, s:br_blue, s:none)

" Syntax specific vim groups.
call s:Hl("Debug", s:none, s:none, s:cyan, s:none)
call s:Hl("Delimiter", s:none, s:none, s:fg_1, s:none)
call s:Hl("Exception", s:none, s:none, s:orange, s:none)
call s:Hl("SpecialComment", s:none, s:none, s:violet, s:none)
call s:Hl("StorageClass", s:bold, s:none, s:br_blue, s:none)
call s:Hl("Structure", s:bold, s:none, s:br_blue, s:none)
call s:Hl("Tag", s:none, s:none, s:blue, s:none)
" ------------------------------------------------------------------------------
" SECTION: Syntax language highlight groups.
" ------------------------------------------------------------------------------
" Diff: {{{
  call s:Hl("diffAdded", s:bold, s:none, s:br_green, s:none)
  call s:Hl("diffChanged", s:bold, s:none, s:br_yellow, s:none)
  call s:Hl("diffFile", s:none, s:none, s:br_cyan, s:none)
  call s:Hl("diffLine", s:none, s:none, s:blue, s:none)
  call s:Hl("diffNewFile", s:bold, s:none, s:br_green, s:none)
  call s:Hl("diffRemoved", s:bold, s:none, s:br_red, s:none)
" }}}
" HTML: {{{
  highlight! link htmlPreAttr PreProc
  highlight! link htmlArg Identifier
  highlight! link htmlEndTag Tag
  highlight! link htmlTag Tag
  highlight! link htmlTagN Tag
  highlight! link htmlTagName Tag
  highlight! link htmlSpecialTagName SpecialComment
" }}}
" XML: {{{
  highlight! link xmlAttrib Identifier
  highlight! link xmlEndTag Tag
  highlight! link xmlEqual Tag
  highlight! link xmlTag Tag
  highlight! link xmlTagName Tag
" }}}
" JSX: {{{
  highlight! link jsxAttrib Identifier
  highlight! link jsxCloseString Tag
  highlight! link jsxCloseTag Tag
  highlight! link jsxEqual Keyword
  highlight! link jsxTag Tag
  highlight! link jsxTagName Tag
" }}}
" TSX: {{{
  highlight! link tsxAttrib Identifier
  highlight! link tsxCloseString Tag
  highlight! link tsxCloseTag Tag
  highlight! link tsxEqual Keyword
  highlight! link tsxTag Tag
  highlight! link tsxTagName Tag
" }}}
" ------------------------------------------------------------------------------
" SECTION: Neovim highlight groups.
" ------------------------------------------------------------------------------
if has('nvim')
  " Cursors neovim groups.
  call s:Hl("Cursor", s:bold, s:dim_0, s:none, s:none)
  call s:Hl("FloatShadow", s:none, s:shadow_0, s:shadow_0, s:none)
  call s:Hl("FloatShadowThrough", s:none, s:shadow_0, s:shadow_0, s:none)
  call s:Hl("iCursor", s:bold, s:br_yellow, s:none, s:none)
  call s:Hl("lCursor", s:bold, s:dim_0, s:none, s:none)
  call s:Hl("NvimInternalError", s:bold, s:none, s:br_red, s:none)
  call s:Hl("RedrawDebugClear", s:none, s:br_orange, s:bg_1, s:none)
  call s:Hl("RedrawDebugComposed", s:none, s:br_green, s:bg_1, s:none)
  call s:Hl("RedrawDebugNormal", s:reverse, s:none, s:none, s:none)
  call s:Hl("RedrawDebugRecompose", s:none, s:br_red, s:bg_1, s:none)
  call s:Hl("TermCursor", s:bold, s:dim_0, s:none, s:none)
  call s:Hl("vCursor", s:bold, s:bg_2, s:none, s:none)

  " Terminal neovim groups.
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
  " LSP: {{{
    call s:Hl("DiagnosticError", s:bold, s:none, s:br_red, s:none)
    call s:Hl("DiagnosticHint", s:bold, s:none, s:br_blue, s:none)
    call s:Hl("DiagnosticInfo", s:bold, s:none, s:br_yellow, s:none)
    call s:Hl("DiagnosticSignError", s:bold, s:none, s:br_red, s:none)
    call s:Hl("DiagnosticSignHint", s:bold, s:none, s:br_blue, s:none)
    call s:Hl("DiagnosticSignInfo", s:bold, s:none, s:br_yellow, s:none)
    call s:Hl("DiagnosticSignWarn", s:bold, s:none, s:br_orange, s:none)
    call s:Hl("DiagnosticUnderlineError", s:underline, s:none, s:none, s:br_red)
    call s:Hl("DiagnosticUnderlineHint", s:underline, s:none, s:none, s:br_blue)
    call s:Hl("DiagnosticUnderlineInfo", s:underline, s:none, s:none, s:br_yellow)
    call s:Hl("DiagnosticUnderlineWarn", s:underline, s:none, s:none, s:br_orange)
    call s:Hl("DiagnosticWarn", s:bold, s:none, s:br_orange, s:none)
    call s:Hl("LspCodeLens", s:none, s:none, s:dim_0, s:none)
    call s:Hl("LspDiagnosticDefaultError", s:bold, s:none, s:br_red, s:none)
    call s:Hl("LspDiagnosticDefaultHint", s:bold, s:none, s:br_blue, s:none)
    call s:Hl("LspDiagnosticDefaultInfo", s:bold, s:none, s:br_yellow, s:none)
    call s:Hl("LspDiagnosticDefaultWarn", s:bold, s:none, s:br_orange, s:none)
    call s:Hl("LspDiagnosticSignError", s:bold, s:none, s:br_red, s:none)
    call s:Hl("LspDiagnosticSignHint", s:bold, s:none, s:br_blue, s:none)
    call s:Hl("LspDiagnosticSignInfo", s:bold, s:none, s:br_yellow, s:none)
    call s:Hl("LspDiagnosticSignWarn", s:bold, s:none, s:br_orange, s:none)
    call s:Hl("LspDiagnosticUnderlineError", s:underline, s:none, s:none, s:br_red)
    call s:Hl("LspDiagnosticUnderlineHint", s:underline, s:none, s:none, s:br_blue)
    call s:Hl("LspDiagnosticUnderlineInfo", s:underline, s:none, s:none, s:br_yellow)
    call s:Hl("LspDiagnosticUnderlineWarn", s:underline, s:none, s:none, s:br_orange)
  " }}}
  " Treesitter: {{{
    if exists('g:loaded_nvim_treesitter')
      call s:Hl("TSAnnotation", s:italic, s:none, s:blue, s:none)
      call s:Hl("TSComment", s:italic, s:none, s:dim_0, s:none)
      call s:Hl("TSConstBuiltin", s:none, s:none, s:violet, s:none)
      call s:Hl("TSConstructor", s:bold, s:none, s:br_blue, s:none)
      call s:Hl("TSDanger", s:bold, s:none, s:br_red, s:none)
      call s:Hl("TSEmphasis", s:bold, s:none, s:br_yellow, s:none)
      call s:Hl("TSFuncBuiltin", s:none, s:none, s:violet, s:none)
      call s:Hl("TSLiteral", s:italic, s:none, s:fg_1, s:none)
      call s:Hl("TSMethod", s:italic, s:none, s:green, s:none)
      call s:Hl("TSNamespace", s:bold, s:none, s:br_blue, s:none)
      call s:Hl("TSNone", s:italic, s:none, s:fg_1, s:none)
      call s:Hl("TSNote", s:italic, s:br_yellow, s:bg_1, s:none)
      call s:Hl("TSStrong", s:bold, s:none, s:br_yellow, s:none)
      call s:Hl("TSTagDelimiter", s:none, s:none, s:blue, s:none)
      call s:Hl("TSTextReference", s:italic, s:none, s:fg_1, s:none)
      call s:Hl("TSTitle", s:bold_italic, s:none, s:br_blue, s:none)
      call s:Hl("TSTypeBuiltin", s:none, s:none, s:violet, s:none)
      call s:Hl("TSUnderline", s:underline, s:none, s:br_blue, s:none)
      call s:Hl("TSVariable", s:none, s:none, s:green, s:none)
      call s:Hl("TSVariableBuiltin", s:none, s:none, s:violet, s:none)
      call s:Hl("TSWarning", s:bold, s:none, s:br_yellow, s:none)
    endif
  " }}}
endif
" ------------------------------------------------------------------------------
" SECTION: Plugins highlight groups.
" ------------------------------------------------------------------------------
" COC: {{{
  call s:Hl("CocCodeLens", s:none, s:none, s:dim_0, s:none)
  call s:Hl("CocDiagnosticsError", s:bold, s:none, s:br_red, s:none)
  call s:Hl("CocDiagnosticsHint", s:bold, s:none, s:br_blue, s:none)
  call s:Hl("CocDiagnosticsInfo", s:bold, s:none, s:br_yellow, s:none)
  call s:Hl("CocDiagnosticsWarning", s:bold, s:none, s:br_orange, s:none)
  call s:Hl("CocErrorFloat", s:bold, s:bg_1, s:br_red, s:none)
  call s:Hl("CocErrorHighlight", s:underline, s:none, s:none, s:br_red)
  call s:Hl("CocHintFloat", s:bold, s:bg_1, s:br_blue, s:none)
  call s:Hl("CocHintHighlight", s:underline, s:none, s:none, s:br_blue)
  call s:Hl("CocInfoFloat", s:bold, s:bg_1, s:br_yellow, s:none)
  call s:Hl("CocInfoHighlight", s:underline, s:none, s:none, s:br_yellow)
  call s:Hl("CocWarningFloat", s:bold, s:bg_1, s:br_orange, s:none)
  call s:Hl("CocWarningHighlight", s:underline, s:none, s:none, s:br_orange)
  call s:Hl("CocErrorSign", s:bold, s:none, s:br_red, s:none)
  call s:Hl("CocHintSign", s:bold, s:none, s:br_blue, s:none)
  call s:Hl("CocInfoSign", s:bold, s:none, s:br_yellow, s:none)
  call s:Hl("CocSelectedText", s:none, s:none, s:br_red, s:none)
  call s:Hl("CocWarningSign", s:bold, s:none, s:br_orange, s:none)
" }}}
" FZF: {{{
  " Create FZF groups.
  call s:Hl("FzfBg", s:none, s:bg_1, s:none, s:none)
  call s:Hl("FzfBgPlus", s:none, s:bg_1, s:br_blue, s:none)
  call s:Hl("FzfBorder", s:none, s:none, s:bg_2, s:none)
  call s:Hl("FzfFg", s:none, s:none, s:dim_0, s:none)
  call s:Hl("FzfFgPlus", s:none, s:none, s:fg_1, s:none)
  call s:Hl("FzfHeader", s:none, s:none, s:br_blue, s:none)
  call s:Hl("FzfHl", s:none, s:none, s:br_green, s:none)
  call s:Hl("FzfHlPlus", s:none, s:none, s:br_cyan, s:none)
  call s:Hl("FzfInfo", s:none, s:none, s:br_yellow, s:none)
  call s:Hl("FzfMarker", s:none, s:none, s:br_blue, s:none)
  call s:Hl("FzfPointer", s:none, s:none, s:fg_1, s:none)
  call s:Hl("FzfPrompt", s:none, s:none, s:dim_0, s:none)
  call s:Hl("FzfSpinner", s:none, s:none, s:br_yellow, s:none)

  " Apply FZF groups.
  if exists('g:loaded_fzf') && !exists('g:fzf_colors')
    let g:fzf_colors = {
          \ 'fg'     : [ 'fg', 'FzfFg'      ],
          \ 'bg'     : [ 'bg', 'FzfBg'      ],
          \ 'hl'     : [ 'fg', 'FzfHl'      ],
          \ 'fg+'    : [ 'fg', 'FzfFgPlus'  ],
          \ 'bg+'    : [ 'bg', 'FzfBgPlus'  ],
          \ 'hl+'    : [ 'fg', 'FzfHlPlus'  ],
          \ 'info'   : [ 'fg', 'FzfInfo'    ],
          \ 'border' : [ 'fg', 'FzfBorder'  ],
          \ 'prompt' : [ 'fg', 'FzfPrompt'  ],
          \ 'pointer': [ 'fg', 'FzfPointer' ],
          \ 'marker' : [ 'fg', 'FzfMarker'  ],
          \ 'spinner': [ 'fg', 'FzfSpinner' ],
          \ 'header' : [ 'fg', 'FzfHeader'  ]
        \ }
  endif

  " Others FZF groups.
  call s:Hl("Fzf1", s:none, s:blue, s:bg_1, s:none)
  call s:Hl("Fzf2", s:none, s:green, s:bg_1, s:none)
  call s:Hl("Fzf3", s:none, s:cyan, s:bg_1, s:none)
" }}}
" Multiple Cursors: {{{
  call s:Hl("multiple_cursors_cursor", s:bold, s:dim_0, s:none, s:none)
  call s:Hl("multiple_cursors_visual", s:bold, s:bg_2, s:none, s:none)
" }}}
" NERDTree: {{{
  call s:Hl("NERDTreeBookmark", s:bold, s:none, s:blue, s:none)
  call s:Hl("NERDTreeBookmarkHeader", s:bold, s:none, s:br_blue, s:none)
  call s:Hl("NERDTreeClosable", s:bold, s:none, s:br_green, s:none)
  call s:Hl("NERDTreeCWD", s:none, s:none, s:dim_0, s:none)
  call s:Hl("NERDTreeDir", s:none, s:none, s:fg_0, s:none)
  call s:Hl("NERDTreeDirSlash", s:none, s:none, s:fg_0, s:none)
  call s:Hl("NERDTreeExecFile", s:none, s:none, s:bg_2, s:none)
  call s:Hl("NERDTreeFile", s:none, s:none, s:fg_1, s:none)
  call s:Hl("NERDTreeHelp", s:italic, s:none, s:dim_0, s:none)
  call s:Hl("NERDTreeHelpCommand", s:none, s:none, s:fg_1, s:none)
  call s:Hl("NERDTreeHelpKey", s:none, s:none, s:fg_1, s:none)
  call s:Hl("NERDTreeHelpTitle", s:bold, s:none, s:br_blue, s:none)
  call s:Hl("NERDTreeLink", s:none, s:none, s:green, s:none)
  call s:Hl("NERDTreeLinkDir", s:none, s:none, s:fg_0, s:none)
  call s:Hl("NERDTreeLinkFile", s:none, s:none, s:fg_0, s:none)
  call s:Hl("NERDTreeLinkTarget", s:none, s:none, s:bg_2, s:none)
  call s:Hl("NERDTreeOpenable", s:none, s:none, s:dim_0, s:none)
  call s:Hl("NERDTreeRO", s:bold, s:none, s:br_yellow, s:none)
  call s:Hl("NERDTreeToggleOff", s:none, s:none, s:dim_0, s:none)
  call s:Hl("NERDTreeToggleOn", s:bold, s:none, s:br_green, s:none)
  call s:Hl("NERDTreeUp", s:italic, s:none, s:fg_0, s:none)
" }}}
" Netrw: {{{
  call s:Hl("netrwClassify", s:none, s:none, s:fg_0, s:none)
  call s:Hl("netrwCmdSep", s:none, s:none, s:dim_0, s:none)
  call s:Hl("netrwComment", s:none, s:none, s:dim_0, s:none)
  call s:Hl("netrwDir", s:none, s:none, s:fg_0, s:none)
  call s:Hl("netrwExe", s:none, s:none, s:bg_2, s:none)
  call s:Hl("netrwHelpCmd", s:bold, s:none, s:br_yellow, s:none)
  call s:Hl("netrwLink", s:none, s:none, s:fg_0, s:none)
  call s:Hl("netrwList", s:none, s:none, s:dim_0, s:none)
  call s:Hl("netrwSymLink", s:none, s:none, s:fg_0, s:none)
  call s:Hl("netrwVersion", s:none, s:none, s:dim_0, s:none)
" }}}
" Rainbow Parentheses: {{{
let s:rainbow_guifgs   = [ '#EFC541', '#FA9153', '#FF81CA', '#B891F5' ]
let s:rainbow_ctermfgs = [ '221'    , '209'    , '212'    , '141'     ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = s:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = s:rainbow_ctermfgs
endif
"}}}
" Signify: {{{
  call s:Hl("SignifySignAdd", s:bold, s:none, s:br_green, s:none)
  call s:Hl("SignifySignChange", s:bold, s:none, s:br_yellow, s:none)
  call s:Hl("SignifySignDelete", s:bold, s:none, s:br_red, s:none)
" }}}
" Visual Multi: {{{
  call s:Hl("VM_Mono", s:bold, s:bg_2, s:br_yellow, s:none)
  call s:Hl("VM_Cursor", s:bold, s:br_yellow, s:bg_1, s:none)
  call s:Hl("VM_Extend", s:none, s:dim_0, s:bg_1, s:none)
  call s:Hl("VM_Insert", s:bold, s:bg_2, s:br_yellow, s:none)
" }}}
" vim: set foldmethod=marker:
