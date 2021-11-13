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

" Configuration variables are initialized.
if !exists('g:enfocado_style')
  let g:enfocado_style = "nature"
endif

" A function is created to highlight the groups.
function! s:Hl(group, txt, bg, fg, sp)
    execute "highlight ".a:group.
          \ " gui=".a:txt[0]."  cterm=".a:txt[0]."  term=".a:txt[0].
          \ " guibg=".a:bg[0]." ctermbg=".a:bg[1].
          \ " guifg=".a:fg[0]." ctermfg=".a:fg[1]." guisp=".a:sp[0]
endfunction
" ------------------------------------------------------------------------------
" SECTION: Highlight groups.
" ------------------------------------------------------------------------------
" Enfocado groups.
call s:Hl("EnfocadoAlertsBlue", s:bold, s:none, s:br_blue, s:none)
call s:Hl("EnfocadoAlertsBlueBg", s:bold, s:br_blue, s:bg_1, s:none)
call s:Hl("EnfocadoAlertsBlueHl", s:underline, s:none, s:br_blue, s:br_blue)
call s:Hl("EnfocadoAlertsGreen", s:bold, s:none, s:br_green, s:none)
call s:Hl("EnfocadoAlertsGreenBg", s:bold, s:br_green, s:bg_1, s:none)
call s:Hl("EnfocadoAlertsGreenHl", s:underline, s:none, s:br_green, s:br_green)
call s:Hl("EnfocadoAlertsOrange", s:bold, s:none, s:br_orange, s:none)
call s:Hl("EnfocadoAlertsOrangeBg", s:bold, s:br_orange, s:bg_1, s:none)
call s:Hl("EnfocadoAlertsOrangeHl", s:underline, s:none, s:br_orange, s:br_orange)
call s:Hl("EnfocadoAlertsRed", s:bold, s:none, s:br_red, s:none)
call s:Hl("EnfocadoAlertsRedBg", s:bold, s:br_red, s:bg_1, s:none)
call s:Hl("EnfocadoAlertsRedHl", s:underline, s:none, s:br_red, s:br_red)
call s:Hl("EnfocadoAlertsYellow", s:bold, s:none, s:br_yellow, s:none)
call s:Hl("EnfocadoAlertsYellowBg", s:bold, s:br_yellow, s:bg_1, s:none)
call s:Hl("EnfocadoAlertsYellowHl", s:underline, s:none, s:br_yellow, s:br_yellow)
call s:Hl("EnfocadoComments", s:none, s:none, s:dim_0, s:none)
call s:Hl("EnfocadoConstants", s:none, s:none, s:cyan, s:none)
call s:Hl("EnfocadoCursor", s:bold, s:dim_0, s:none, s:none)
call s:Hl("EnfocadoDiffAdd", s:none, s:none, s:green, s:none)
call s:Hl("EnfocadoDiffChange", s:none, s:none, s:yellow, s:none)
call s:Hl("EnfocadoDiffDelete", s:none, s:none, s:red, s:none)
call s:Hl("EnfocadoDiffLine", s:none, s:none, s:cyan, s:none)
call s:Hl("EnfocadoDimmeds", s:none, s:none, s:bg_2, s:none)
call s:Hl("EnfocadoFg", s:none, s:none, s:fg_0, s:none)
call s:Hl("EnfocadoFg1", s:none, s:none, s:fg_1, s:none)
call s:Hl("EnfocadoHl", s:bold, s:br_yellow, s:bg_1, s:none)
call s:Hl("EnfocadoIgnores", s:none, s:none, s:bg_1, s:none)
call s:Hl("EnfocadoNone", s:none, s:none, s:none, s:none)
call s:Hl("EnfocadoPopup", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("EnfocadoPopup1", s:none, s:bg_2, s:fg_0, s:none)
call s:Hl("EnfocadoSearch", s:bold, s:br_cyan, s:bg_1, s:none)
call s:Hl("EnfocadoShadows", s:none, s:shadow_0, s:none, s:none)
call s:Hl("EnfocadoVisual", s:bold, s:bg_2, s:none, s:none)
if g:enfocado_style == "neon"
  " Enfocado neon...
  call s:Hl("EnfocadoAccent", s:none, s:none, s:magenta, s:none)
  call s:Hl("EnfocadoBuiltin", s:none, s:none, s:blue, s:none)
  call s:Hl("EnfocadoIdentifiers", s:none, s:none, s:magenta, s:none)
  call s:Hl("EnfocadoKeywords", s:none, s:none, s:violet, s:none)
  call s:Hl("EnfocadoSearch2", s:bold, s:br_magenta, s:bg_1, s:none)
  call s:Hl("EnfocadoSearch3", s:bold, s:br_violet, s:bg_1, s:none)
  call s:Hl("EnfocadoTitles", s:bold, s:none, s:br_violet, s:none)
  call s:Hl("EnfocadoUnderlineds", s:underline, s:none, s:magenta, s:br_violet)
else
  " Enfocado nature...
  call s:Hl("EnfocadoAccent", s:none, s:none, s:green, s:none)
  call s:Hl("EnfocadoBuiltin", s:none, s:none, s:violet, s:none)
  call s:Hl("EnfocadoIdentifiers", s:none, s:none, s:green, s:none)
  call s:Hl("EnfocadoKeywords", s:none, s:none, s:blue, s:none)
  call s:Hl("EnfocadoSearch2", s:bold, s:br_green, s:bg_1, s:none)
  call s:Hl("EnfocadoSearch3", s:bold, s:br_blue, s:bg_1, s:none)
  call s:Hl("EnfocadoTitles", s:bold, s:none, s:br_blue, s:none)
  call s:Hl("EnfocadoUnderlineds", s:underline, s:none, s:green, s:br_blue)
endif

" General vim groups.
highlight! link DiffAdd EnfocadoDiffAdd
highlight! link DiffChange EnfocadoDiffChange
highlight! link DiffDelete EnfocadoDiffDelete
highlight! link DiffText EnfocadoHl
highlight! link Directory EnfocadoFg
highlight! link ErrorMsg EnfocadoAlertsRed
highlight! link FoldColumn EnfocadoNone
highlight! link Ignore EnfocadoIgnores
highlight! link IncSearch EnfocadoSearch
highlight! link LineNr EnfocadoDimmeds
highlight! link ModeMsg EnfocadoAccent
highlight! link MoreMsg EnfocadoAccent
highlight! link MsgArea EnfocadoComments
highlight! link NonText EnfocadoDimmeds
highlight! link Question EnfocadoAlertsYellow
highlight! link Search EnfocadoSearch
highlight! link SignColumn EnfocadoNone
highlight! link SpecialKey EnfocadoDimmeds
highlight! link WarningMsg EnfocadoAlertsOrange
highlight! link Visual EnfocadoVisual

call s:Hl("Folded", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("Normal", s:none, s:bg_0, s:fg_1, s:none)
call s:Hl("QuickFixLine", s:bold, s:bg_2, s:none, s:none)
call s:Hl("StatusLine", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("StatusLineNC", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("StatusLineTerm", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("StatusLineTermNC", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("ToolbarButton", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("ToolbarLine", s:none, s:bg_2, s:bg_2, s:none)
call s:Hl("VertSplit", s:none, s:none, s:shadow_0, s:none)
call s:Hl("WildMenu", s:bold, s:bg_1, s:fg_1, s:none)
if has('spell')
  call s:Hl("SpellBad", s:undercurl, s:none, s:br_red, s:br_red)
  call s:Hl("SpellCap", s:undercurl, s:none, s:br_orange, s:br_orange)
  call s:Hl("SpellLocal", s:undercurl, s:none, s:br_yellow, s:br_yellow)
  call s:Hl("SpellRare", s:undercurl, s:none, s:br_magenta, s:br_magenta)
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
        \ s:dim_0[0],
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
highlight! link Comment EnfocadoComments
highlight! link Constant EnfocadoConstants
highlight! link Debug EnfocadoConstants
highlight! link Error EnfocadoAlertsRed
highlight! link Exception EnfocadoAlertsOrange
highlight! link Identifier EnfocadoIdentifiers
highlight! link PreProc EnfocadoKeywords
highlight! link Special EnfocadoKeywords
highlight! link SpecialComment EnfocadoBuiltin
highlight! link Statement EnfocadoKeywords
highlight! link StorageClass EnfocadoTitles
highlight! link Structure EnfocadoTitles
highlight! link Tag EnfocadoKeywords
highlight! link Title EnfocadoTitles
highlight! link Type EnfocadoKeywords
highlight! link Underlined EnfocadoUnderlineds
highlight! link Delimiter EnfocadoFg1
highlight! link Todo EnfocadoHl
" ------------------------------------------------------------------------------
" SECTION: Syntax language highlight groups.
" ------------------------------------------------------------------------------
" Diff: {{{
  highlight! link diffAdded EnfocadoDiffAdd
  highlight! link diffChanged EnfocadoDiffChange
  highlight! link diffFile EnfocadoConstants
  highlight! link diffLine EnfocadoDiffLine
  highlight! link diffNewFile EnfocadoDiffAdd
  highlight! link diffRemoved EnfocadoDiffDelete
" }}}
" HTML: {{{
  highlight! link htmlPreAttr EnfocadoKeywords
  highlight! link htmlArg EnfocadoIdentifiers
  highlight! link htmlEndTag EnfocadoKeywords
  highlight! link htmlTag EnfocadoKeywords
  highlight! link htmlTagN EnfocadoKeywords
  highlight! link htmlTagName EnfocadoKeywords
  highlight! link htmlSpecialTagName EnfocadoBuiltin
" }}}
" XML: {{{
  highlight! link xmlAttrib EnfocadoIdentifiers
  highlight! link xmlEndTag EnfocadoKeywords
  highlight! link xmlEqual EnfocadoKeywords
  highlight! link xmlProcessingDelim EnfocadoKeywords
  highlight! link xmlTag EnfocadoKeywords
  highlight! link xmlTagName EnfocadoKeywords
" }}}
" JSX: {{{
  highlight! link jsxAttrib EnfocadoIdentifiers
  highlight! link jsxCloseString EnfocadoKeywords
  highlight! link jsxCloseTag EnfocadoKeywords
  highlight! link jsxEqual EnfocadoKeywords
  highlight! link jsxTag EnfocadoKeywords
  highlight! link jsxTagName EnfocadoKeywords
" }}}
" TSX: {{{
  highlight! link tsxAttrib EnfocadoIdentifiers
  highlight! link tsxCloseString EnfocadoKeywords
  highlight! link tsxCloseTag EnfocadoKeywords
  highlight! link tsxEqual EnfocadoKeywords
  highlight! link tsxTag EnfocadoKeywords
  highlight! link tsxTagName EnfocadoKeywords
" }}}
" ------------------------------------------------------------------------------
" SECTION: Neovim highlight groups.
" ------------------------------------------------------------------------------
if has('nvim')
  " Cursors neovim groups.
  highlight! link Cursor EnfocadoCursor
  highlight! link iCursor EnfocadoCursor
  highlight! link lCursor EnfocadoCursor
  highlight! link vCursor EnfocadoVisual
  highlight! link TermCursor EnfocadoCursor

  " Other neovim groups.
  highlight! link FloatShadow EnfocadoShadows
  highlight! link FloatShadowThrough EnfocadoShadows
  highlight! link NvimInternalError EnfocadoAlertsRed
  highlight! link RedrawDebugClear EnfocadoAlertsOrange
  highlight! link RedrawDebugComposed EnfocadoAlertsGreen
  highlight! link RedrawDebugRecompose EnfocadoAlertsRed

  call s:Hl("RedrawDebugNormal", s:reverse, s:none, s:none, s:none)

  " Terminal neovim groups.
  let g:terminal_color_0  = s:bg_1[0]
  let g:terminal_color_1  = s:red[0]
  let g:terminal_color_2  = s:green[0]
  let g:terminal_color_3  = s:yellow[0]
  let g:terminal_color_4  = s:blue[0]
  let g:terminal_color_5  = s:magenta[0]
  let g:terminal_color_6  = s:cyan[0]
  let g:terminal_color_7  = s:dim_0[0]
  let g:terminal_color_8  = s:bg_2[0]
  let g:terminal_color_9  = s:br_red[0]
  let g:terminal_color_10 = s:br_green[0]
  let g:terminal_color_11 = s:br_yellow[0]
  let g:terminal_color_12 = s:br_blue[0]
  let g:terminal_color_13 = s:br_magenta[0]
  let g:terminal_color_14 = s:br_cyan[0]
  let g:terminal_color_15 = s:fg_1[0]
  " LSP: {{{
    highlight! link DiagnosticError EnfocadoAlertsRed
    highlight! link DiagnosticHint EnfocadoAlertsBlue
    highlight! link DiagnosticInfo EnfocadoAlertsYellow
    highlight! link DiagnosticWarn EnfocadoAlertsOrange
    highlight! link DiagnosticSignError EnfocadoAlertsRed
    highlight! link DiagnosticSignHint EnfocadoAlertsBlue
    highlight! link DiagnosticSignInfo EnfocadoAlertsYellow
    highlight! link DiagnosticSignWarn EnfocadoAlertsOrange
    highlight! link DiagnosticUnderlineError EnfocadoAlertsRedHl
    highlight! link DiagnosticUnderlineHint EnfocadoAlertsBlueHl
    highlight! link DiagnosticUnderlineInfo EnfocadoAlertsYellowHl
    highlight! link DiagnosticUnderlineWarn EnfocadoAlertsOrangeHl
    highlight! link LspCodeLens EnfocadoComments
    highlight! link LspDiagnosticDefaultError EnfocadoAlertsRed
    highlight! link LspDiagnosticDefaultHint EnfocadoAlertsBlue
    highlight! link LspDiagnosticDefaultInfo EnfocadoAlertsYellow
    highlight! link LspDiagnosticDefaultWarn EnfocadoAlertsOrange
    highlight! link LspDiagnosticSignError EnfocadoAlertsRed
    highlight! link LspDiagnosticSignHint EnfocadoAlertsBlue
    highlight! link LspDiagnosticSignInfo EnfocadoAlertsYellow
    highlight! link LspDiagnosticSignWarn EnfocadoAlertsOrange
    highlight! link LspDiagnosticUnderlineError EnfocadoAlertsRedHl
    highlight! link LspDiagnosticUnderlineHint EnfocadoAlertsBlueHl
    highlight! link LspDiagnosticUnderlineInfo EnfocadoAlertsYellowHl
    highlight! link LspDiagnosticUnderlineWarn EnfocadoAlertsOrangeHl
  " }}}
  " Treesitter: {{{
    if exists('g:loaded_nvim_treesitter')
      if g:enfocado_style == "neon"
        " Enfocado neon...
        call s:Hl("TSAnnotation", s:italic, s:none, s:violet, s:none)
        call s:Hl("TSConstBuiltin", s:none, s:none, s:blue, s:none)
        call s:Hl("TSConstructor", s:bold, s:none, s:br_violet, s:none)
        call s:Hl("TSFuncBuiltin", s:none, s:none, s:blue, s:none)
        call s:Hl("TSMethod", s:italic, s:none, s:magenta, s:none)
        call s:Hl("TSNamespace", s:bold, s:none, s:br_violet, s:none)
        call s:Hl("TSTagDelimiter", s:none, s:none, s:violet, s:none)
        call s:Hl("TSTitle", s:bold_italic, s:none, s:br_violet, s:none)
        call s:Hl("TSTypeBuiltin", s:none, s:none, s:blue, s:none)
        call s:Hl("TSUnderline", s:underline, s:none, s:br_violet, s:none)
        call s:Hl("TSVariable", s:none, s:none, s:magenta, s:none)
        call s:Hl("TSVariableBuiltin", s:none, s:none, s:blue, s:none)
      else
        " Enfocado nature...
        call s:Hl("TSAnnotation", s:italic, s:none, s:blue, s:none)
        call s:Hl("TSConstBuiltin", s:none, s:none, s:violet, s:none)
        call s:Hl("TSConstructor", s:bold, s:none, s:br_blue, s:none)
        call s:Hl("TSFuncBuiltin", s:none, s:none, s:violet, s:none)
        call s:Hl("TSMethod", s:italic, s:none, s:green, s:none)
        call s:Hl("TSNamespace", s:bold, s:none, s:br_blue, s:none)
        call s:Hl("TSTagDelimiter", s:none, s:none, s:blue, s:none)
        call s:Hl("TSTitle", s:bold_italic, s:none, s:br_blue, s:none)
        call s:Hl("TSTypeBuiltin", s:none, s:none, s:violet, s:none)
        call s:Hl("TSUnderline", s:underline, s:none, s:br_blue, s:none)
        call s:Hl("TSVariable", s:none, s:none, s:green, s:none)
        call s:Hl("TSVariableBuiltin", s:none, s:none, s:violet, s:none)
      endif
      call s:Hl("TSComment", s:italic, s:none, s:dim_0, s:none)
      call s:Hl("TSDanger", s:bold, s:none, s:br_red, s:none)
      call s:Hl("TSEmphasis", s:bold, s:none, s:br_yellow, s:none)
      call s:Hl("TSLiteral", s:italic, s:none, s:fg_1, s:none)
      call s:Hl("TSNone", s:italic, s:none, s:fg_1, s:none)
      call s:Hl("TSNote", s:italic, s:br_yellow, s:bg_1, s:none)
      call s:Hl("TSStrong", s:bold, s:none, s:br_yellow, s:none)
      call s:Hl("TSTextReference", s:italic, s:none, s:fg_1, s:none)
      call s:Hl("TSWarning", s:bold, s:none, s:br_yellow, s:none)
    endif
  " }}}
endif
" ------------------------------------------------------------------------------
" SECTION: Plugins highlight groups.
" ------------------------------------------------------------------------------
" COC: {{{
  highlight! link CocCodeLens EnfocadoComments
  highlight! link CocDiagnosticsError EnfocadoAlertsRed
  highlight! link CocDiagnosticsHint EnfocadoAlertsBlue
  highlight! link CocDiagnosticsInfo EnfocadoAlertsYellow
  highlight! link CocDiagnosticsWarning EnfocadoAlertsOrange
  highlight! link CocErrorHighlight EnfocadoAlertsRedHl
  highlight! link CocHintHighlight EnfocadoAlertsBlueHl
  highlight! link CocInfoHighlight EnfocadoAlertsYellowHl
  highlight! link CocWarningHighlight EnfocadoAlertsOrangeHl
  highlight! link CocErrorSign EnfocadoAlertsRed
  highlight! link CocHintSign EnfocadoAlertsBlue
  highlight! link CocInfoSign EnfocadoAlertsYellow
  highlight! link CocWarningSign EnfocadoAlertsOrange
  highlight! link CocSelectedText EnfocadoAlertsRed

  call s:Hl("CocErrorFloat", s:bold, s:bg_1, s:br_red, s:none)
  call s:Hl("CocHintFloat", s:bold, s:bg_1, s:br_blue, s:none)
  call s:Hl("CocInfoFloat", s:bold, s:bg_1, s:br_yellow, s:none)
  call s:Hl("CocWarningFloat", s:bold, s:bg_1, s:br_orange, s:none)
" }}}
" Copilot: {{{
  if exists('g:loaded_copilot')
    if exists('g:loaded_nvim_treesitter')
      call s:Hl("CopilotSuggestion", s:italic, s:bg_0, s:dim_0, s:none)
    else
      call s:Hl("CopilotSuggestion", s:none, s:bg_0, s:dim_0, s:none)
    endif
  endif
" }}}
" FZF: {{{
  " FZF apply enfocado groups.
  if exists('g:loaded_fzf') && !exists('g:fzf_colors')
    let g:fzf_colors = {
          \ 'fg'     : [ 'fg', 'EnfocadoPopup'    ],
          \ 'bg'     : [ 'bg', 'EnfocadoPopup'    ],
          \ 'hl'     : [ 'fg', 'EnfocadoAccent'   ],
          \ 'fg+'    : [ 'fg', 'EnfocadoFg'       ],
          \ 'bg+'    : [ 'bg', 'EnfocadoPopup1'   ],
          \ 'hl+'    : [ 'fg', 'EnfocadoAccent'   ],
          \ 'info'   : [ 'fg', 'EnfocadoKeywords' ],
          \ 'border' : [ 'fg', 'EnfocadoAccent'   ],
          \ 'prompt' : [ 'fg', 'EnfocadoComments' ],
          \ 'pointer': [ 'fg', 'EnfocadoAccent'   ],
          \ 'marker' : [ 'fg', 'EnfocadoAccent'   ],
          \ 'spinner': [ 'fg', 'EnfocadoKeywords' ],
          \ 'header' : [ 'fg', 'EnfocadoTitles'   ]
        \ }
  endif

  " Others FZF groups.
  call s:Hl("Fzf1", s:bold, s:bg_2, s:dim_0, s:none)
  call s:Hl("Fzf2", s:none, s:bg_1, s:dim_0, s:none)
  call s:Hl("Fzf3", s:none, s:bg_0, s:dim_0, s:none)
" }}}
" Multiple Cursors: {{{
  highlight! link multiple_cursors_cursor EnfocadoCursor
  highlight! link multiple_cursors_visual EnfocadoVisual
" }}}
" NERDTree: {{{
  highlight! link NERDTreeBookmark EnfocadoKeywords
  highlight! link NERDTreeBookmarkHeader EnfocadoTitles
  highlight! link NERDTreeClosable EnfocadoFg
  highlight! link NERDTreeCWD EnfocadoComments
  highlight! link NERDTreeDir EnfocadoFg
  highlight! link NERDTreeDirSlash EnfocadoFg
  highlight! link NERDTreeExecFile EnfocadoDimmeds
  highlight! link NERDTreeFile EnfocadoFg
  highlight! link NERDTreeHelp EnfocadoComments
  highlight! link NERDTreeHelpCommand EnfocadoFg
  highlight! link NERDTreeHelpKey EnfocadoFg
  highlight! link NERDTreeHelpTitle EnfocadoTitles
  highlight! link NERDTreeLink EnfocadoAccent
  highlight! link NERDTreeLinkDir EnfocadoFg
  highlight! link NERDTreeLinkFile EnfocadoFg
  highlight! link NERDTreeLinkTarget EnfocadoDimmeds
  highlight! link NERDTreeOpenable EnfocadoComments
  highlight! link NERDTreeRO EnfocadoAlertsYellow
  highlight! link NERDTreeToggleOff EnfocadoComments
  highlight! link NERDTreeToggleOn EnfocadoAccent
  highlight! link NERDTreeUp EnfocadoFg
" }}}
" Netrw: {{{
  highlight! link netrwClassify EnfocadoFg
  highlight! link netrwCmdSep EnfocadoComments
  highlight! link netrwComment EnfocadoComments
  highlight! link netrwDir EnfocadoFg
  highlight! link netrwExe EnfocadoDimmeds
  highlight! link netrwHelpCmd EnfocadoAlertsYellow
  highlight! link netrwLink EnfocadoFg
  highlight! link netrwList EnfocadoComments
  highlight! link netrwSymLink EnfocadoFg
  highlight! link netrwVersion EnfocadoComments
" }}}
" Rainbow Parentheses: {{{
  if g:enfocado_style == "neon"
    let s:rainbow_guifgs   = [ s:br_yellow[0], s:br_orange[0], s:br_green[0], s:br_yellow[0] ]
    let s:rainbow_ctermfgs = [ s:br_yellow[1], s:br_orange[1], s:br_green[1], s:br_yellow[1] ]
  else
    let s:rainbow_guifgs   = [ s:br_yellow[0], s:br_orange[0], s:br_magenta[0], s:br_yellow[0] ]
    let s:rainbow_ctermfgs = [ s:br_yellow[1], s:br_orange[1], s:br_magenta[1], s:br_yellow[1] ]
  endif
  
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
  highlight! link SignifySignAdd EnfocadoDiffAdd
  highlight! link SignifySignChange EnfocadoDiffChange
  highlight! link SignifySignDelete EnfocadoDiffDelete
" }}}
" vim: set foldmethod=marker:
