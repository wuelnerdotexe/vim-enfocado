" -----------------------------------------------------------------------------
" Name:        Enfocado for Vim
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How themes should be.
" About:       Enfocado is more than a theme, it is a concept of "how themes
"              should be", focusing on what is really important to developers:
"              the code and nothing else.
" -----------------------------------------------------------------------------

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

" Support colors are declared.
let s:black = [ '#000000', 16  ]

" Attributes are declared.
let s:none        = [ 'NONE'         , 'NONE'          ]
let s:reverse     = [ 'reverse'      , 'reverse'       ]
let s:bold        = [ 'bold'         , 'bold'          ]
let s:bold_italic = [ 'bold,italic'  , 'bold,italic'   ]
let s:italic      = [ 'italic'       , 'italic'        ]
let s:strike      = [ 'strikethrough', 'strikethrough' ]
let s:underline   = [ 'underline'    , 'underline'     ]
let s:undercurl   = [ 'undercurl'    , 'underline'     ]

" Configuration variables are initialized.
if !exists('g:enfocado_style')
  let g:enfocado_style = "nature"
endif

" A function is created to highlight the groups.
function! s:Hl(group, txt, bg, fg, sp)
    execute "highlight ".a:group.
          \ " gui=".a:txt[0]."  cterm=".a:txt[1]."  term=".a:txt[1].
          \ " guibg=".a:bg[0]." ctermbg=".a:bg[1].
          \ " guifg=".a:fg[0]." ctermfg=".a:fg[1]." guisp=".a:sp[0]
endfunction
" ------------------------------------------------------------------------------
" SECTION: Highlight groups.
" ------------------------------------------------------------------------------
" General groups.
call s:Hl("Normal", s:none, s:bg_0, s:fg_0, s:none)
highlight! link EnfocadoNormal Normal

" Enfocado groups.
if g:enfocado_style == "neon"
  " Enfocado neon...
  call s:Hl("EnfocadoAccents", s:none, s:none, s:magenta, s:none)
  call s:Hl("EnfocadoAccentsFloats", s:none, s:bg_1, s:magenta, s:none)
  call s:Hl("EnfocadoButtons", s:none, s:magenta, s:bg_1, s:none)
  call s:Hl("EnfocadoFunctions", s:none, s:none, s:br_magenta, s:none)
  call s:Hl("EnfocadoFunctionsBuiltins", s:none, s:none, s:br_green, s:none)
  call s:Hl("EnfocadoKeywords", s:none, s:none, s:br_violet, s:none)
  call s:Hl("EnfocadoKeywordsBuiltins", s:none, s:none, s:br_blue, s:none)
  call s:Hl("EnfocadoSearchs", s:bold, s:bg_2, s:br_magenta, s:none)
  call s:Hl("EnfocadoStructs", s:bold, s:none, s:br_magenta, s:none)
  call s:Hl("EnfocadoTypes", s:none, s:none, s:violet, s:none)
  call s:Hl("EnfocadoTypesBuiltins", s:none, s:none, s:blue, s:none)
  call s:Hl("EnfocadoVariables", s:none, s:none, s:magenta, s:none)
  call s:Hl("EnfocadoVariablesBuiltins", s:none, s:none, s:green, s:none)
else
  " Enfocado nature...
  call s:Hl("EnfocadoAccents", s:none, s:none, s:green, s:none)
  call s:Hl("EnfocadoAccentsFloats", s:none, s:bg_1, s:green, s:none)
  call s:Hl("EnfocadoButtons", s:none, s:green, s:bg_1, s:none)
  call s:Hl("EnfocadoFunctions", s:none, s:none, s:br_green, s:none)
  call s:Hl("EnfocadoFunctionsBuiltins", s:none, s:none, s:br_magenta, s:none)
  call s:Hl("EnfocadoKeywords", s:none, s:none, s:br_blue, s:none)
  call s:Hl("EnfocadoKeywordsBuiltins", s:none, s:none, s:br_violet, s:none)
  call s:Hl("EnfocadoSearchs", s:bold, s:bg_2, s:br_green, s:none)
  call s:Hl("EnfocadoStructs", s:bold, s:none, s:br_green, s:none)
  call s:Hl("EnfocadoTypes", s:none, s:none, s:blue, s:none)
  call s:Hl("EnfocadoTypesBuiltins", s:none, s:none, s:violet, s:none)
  call s:Hl("EnfocadoVariables", s:none, s:none, s:green, s:none)
  call s:Hl("EnfocadoVariablesBuiltins", s:none, s:none, s:magenta, s:none)
endif
call s:Hl("EnfocadoDimmeds", s:none, s:none, s:dim_0, s:none)
call s:Hl("EnfocadoBorders", s:none, s:none, s:black, s:none)
call s:Hl("EnfocadoConstants", s:none, s:none, s:cyan, s:none)
call s:Hl("EnfocadoCursors", s:none, s:fg_0, s:bg_1, s:none)
call s:Hl("EnfocadoDiffsAdds", s:none, s:none, s:green, s:none)
call s:Hl("EnfocadoDiffsChanges", s:none, s:none, s:yellow, s:none)
call s:Hl("EnfocadoDiffsDeletes", s:none, s:none, s:red, s:none)
call s:Hl("EnfocadoDiffsFgs", s:none, s:none, s:cyan, s:none)
call s:Hl("EnfocadoIgnores", s:none, s:none, s:bg_2, s:none)
call s:Hl("EnfocadoErrors", s:none, s:none, s:br_red, s:none)
call s:Hl("EnfocadoErrorsFloats", s:none, s:bg_1, s:br_red, s:none)
call s:Hl("EnfocadoErrorsUnders", s:underline, s:none, s:br_red, s:br_red)
call s:Hl("EnfocadoFgs", s:none, s:none, s:fg_0, s:none)
call s:Hl("EnfocadoFloats", s:none, s:bg_1, s:fg_0, s:none)
call s:Hl("EnfocadoHints", s:none, s:none, s:br_blue, s:none)
call s:Hl("EnfocadoHintsFloats", s:none, s:bg_1, s:br_blue, s:none)
call s:Hl("EnfocadoHintsUnders", s:underline, s:none, s:br_blue, s:br_blue)
call s:Hl("EnfocadoInfos", s:none, s:none, s:br_yellow, s:none)
call s:Hl("EnfocadoInfosFloats", s:none, s:bg_1, s:br_yellow, s:none)
call s:Hl("EnfocadoInfosUnders", s:underline, s:none, s:br_yellow, s:br_yellow)
call s:Hl("EnfocadoLinesHls", s:none, s:bg_1, s:none, s:none)
call s:Hl("EnfocadoLinks", s:underline, s:none, s:br_cyan, s:br_cyan)
call s:Hl("EnfocadoNones", s:none, s:none, s:none, s:none)
call s:Hl("EnfocadoRares", s:none, s:none, s:br_magenta, s:none)
call s:Hl("EnfocadoReverse", s:reverse, s:none, s:none, s:none)
call s:Hl("EnfocadoStatusLines", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("EnfocadoStatusLinesNC", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("EnfocadoSuccess", s:none, s:none, s:br_green, s:none)
call s:Hl("EnfocadoSuccessFloats", s:none, s:bg_1, s:br_green, s:none)
call s:Hl("EnfocadoSuccessUnders", s:underline, s:none, s:br_green, s:br_green)
call s:Hl("EnfocadoTitles", s:bold, s:none, s:fg_1, s:none)
call s:Hl("EnfocadoVisuals", s:none, s:bg_2, s:none, s:none)
call s:Hl("EnfocadoWarns", s:none, s:none, s:br_orange, s:none)
call s:Hl("EnfocadoWarnsFloats", s:none, s:bg_1, s:br_orange, s:none)
call s:Hl("EnfocadoWarnsUnders", s:underline, s:none, s:br_orange, s:br_orange)

" General vim groups.
if has('spell')
    call s:Hl("SpellBad", s:undercurl, s:none, s:none, s:red)
    call s:Hl("SpellCap", s:undercurl, s:none, s:none, s:blue)
    call s:Hl("SpellLocal", s:undercurl, s:none, s:none, s:cyan)
    call s:Hl("SpellRare", s:undercurl, s:none, s:none, s:magenta)
endif
if version >= 700
  highlight! link CursorColumn EnfocadoLinesHls
  highlight! link CursorLine EnfocadoLinesHls
  highlight! link MatchParen EnfocadoVisuals
  highlight! link Pmenu EnfocadoFloats
  highlight! link PmenuSbar EnfocadoLinesHls
  highlight! link PmenuThumb EnfocadoVisuals
  highlight! link PmenuSel EnfocadoVisuals
  highlight! link TabLine EnfocadoStatusLinesNC
  highlight! link TabLineFill EnfocadoStatusLinesNC
  highlight! link TabLineSel EnfocadoDimmeds
endif
if version >= 703
  highlight! link ColorColumn EnfocadoLinesHls
  highlight! link Conceal EnfocadoIgnores
  highlight! link CursorLineNr EnfocadoDimmeds
endif
highlight! link DiffAdd EnfocadoDiffsAdds
highlight! link DiffChange EnfocadoDiffsChanges
highlight! link DiffDelete EnfocadoDiffsDeletes
highlight! link DiffText EnfocadoDiffsChanges
highlight! link Directory EnfocadoDimmeds
highlight! link EndOfBuffer EnfocadoIgnores
highlight! link ErrorMsg EnfocadoErrors
highlight! link FoldColumn EnfocadoNones
highlight! link Folded EnfocadoDimmeds
highlight! link IncSearch EnfocadoSearchs
highlight! link LineNr EnfocadoIgnores
highlight! link LineNrAbove EnfocadoIgnores
highlight! link LineNrBelow EnfocadoIgnores
highlight! link ModeMsg EnfocadoAccents
highlight! link MoreMsg EnfocadoAccents
highlight! link NonText EnfocadoIgnores
highlight! link Question EnfocadoInfos
highlight! link QuickFixLine EnfocadoLinesHls
highlight! link Search EnfocadoSearchs
highlight! link SignColumn EnfocadoNones
highlight! link SpecialKey EnfocadoIgnores
highlight! link Statusline EnfocadoStatuslines
highlight! link StatuslineNC EnfocadoStatuslinesNC
highlight! link StatuslineTerm EnfocadoStatuslines
highlight! link StatuslineTermNC EnfocadoStatuslinesNC
highlight! link ToolbarButton EnfocadoButtons
highlight! link ToolbarLine EnfocadoStatusLines
highlight! link VertSplit EnfocadoBorders
highlight! link Visual EnfocadoVisuals
highlight! link WarningMsg EnfocadoWarns
highlight! link WildMenu EnfocadoAccentsFloats

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
call s:Hl("Todo", s:bold, s:br_cyan, s:bg_1, s:none)
highlight! link Boolean EnfocadoTypesBuiltins
highlight! link Character EnfocadoConstants
highlight! link Comment EnfocadoDimmeds
highlight! link Conditional EnfocadoKeywords
highlight! link Constant EnfocadoConstants
highlight! link Debug EnfocadoConstants
highlight! link Define EnfocadoTypes
highlight! link Delimiter EnfocadoFgs
highlight! link Error EnfocadoErrors
highlight! link Exception EnfocadoKeywords
highlight! link Float EnfocadoConstants
highlight! link Function EnfocadoFunctions
highlight! link Identifier EnfocadoVariables
highlight! link Ignore EnfocadoIgnores
highlight! link Include EnfocadoTypes
highlight! link Keyword EnfocadoKeywords
highlight! link Label EnfocadoTypes
highlight! link Macro EnfocadoTypes
highlight! link Method EnfocadoFunctions
highlight! link Number EnfocadoConstants
highlight! link Operator EnfocadoKeywords
highlight! link PreCondit EnfocadoKeywords
highlight! link PreProc EnfocadoKeywords
highlight! link Repeat EnfocadoKeywords
highlight! link Special EnfocadoKeywordsBuiltins
highlight! link SpecialChar EnfocadoKeywordsBuiltins
highlight! link SpecialComment EnfocadoKeywordsBuiltins
highlight! link Statement EnfocadoKeywords
highlight! link StorageClass EnfocadoTypes
highlight! link String EnfocadoConstants
highlight! link Struct EnfocadoFunctions
highlight! link Structure EnfocadoKeywords
highlight! link Tag EnfocadoKeywords
highlight! link Title EnfocadoTitles
highlight! link Type EnfocadoTypes
highlight! link Typedef EnfocadoTypes
highlight! Underlined term=underline cterm=underline gui=underline

" Syntax filetype diff groups.
highlight! link diffAdded EnfocadoDiffsAdds
highlight! link diffBDiffer EnfocadoFgs
highlight! link diffChanged EnfocadoDiffsChanges
highlight! link diffComment	EnfocadoDimmeds
highlight! link diffCommon EnfocadoFgs
highlight! link diffDiffer EnfocadoFgs
highlight! link diffFile EnfocadoFgs
highlight! link diffIdentical EnfocadoFgs
highlight! link diffIndexLine EnfocadoFgs
highlight! link diffIsA EnfocadoFgs
highlight! link diffLine EnfocadoDiffsFgs
highlight! link diffNewFile EnfocadoFgs
highlight! link diffNoEOL EnfocadoFgs
highlight! link diffOldFile EnfocadoFgs
highlight! link diffOnly EnfocadoFgs
highlight! link diffRemoved EnfocadoDiffsDeletes
highlight! link diffSubname	EnfocadoDiffsFgs
" ------------------------------------------------------------------------------
" SECTION: Neovim highlight groups.
" ------------------------------------------------------------------------------
if has('nvim')
  " Neovim exclusive groups.
  highlight! FloatShadow ctermbg=16 guibg=#000000 blend=60
  highlight! FloatShadowThrough ctermbg=16 guibg=#000000 blend=100
  highlight! link Cursor EnfocadoCursors
  highlight! link FloatBorder EnfocadoFgs
  highlight! link lCursor EnfocadoCursors
  highlight! link MsgArea EnfocadoDimmeds
  highlight! link MsgSeparator EnfocadoStatusLines
  highlight! link NormalFloat EnfocadoFloats
  highlight! link NormalNC EnfocadoNormal
  highlight! link NvimInternalError EnfocadoErrors
  highlight! link RedrawDebugClear EnfocadoWarns
  highlight! link RedrawDebugComposed EnfocadoSuccess
  highlight! link RedrawDebugNormal EnfocadoReverse
  highlight! link RedrawDebugRecompose EnfocadoErrors
  highlight! link Substitute EnfocadoSearchs
  highlight! link TermCursor EnfocadoCursors
  highlight! link TermCursorNC EnfocadoNones
  highlight! link Whitespace EnfocadoIgnores

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
  " nvim-lspconfig: {{{
    " Neovim diagnostics new groups.
    highlight! link DiagnosticError EnfocadoErrors
    highlight! link DiagnosticHint EnfocadoHints
    highlight! link DiagnosticInfo EnfocadoInfos
    highlight! link DiagnosticWarn EnfocadoWarns
    highlight! link DiagnosticFloatingError EnfocadoErrorsFloats
    highlight! link DiagnosticFloatingHint EnfocadoHintsFloats
    highlight! link DiagnosticFloatingInfo EnfocadoInfosFloats
    highlight! link DiagnosticFloatingWarn EnfocadoWarnsFloats
    highlight! link DiagnosticSignError EnfocadoErrors
    highlight! link DiagnosticSignHint EnfocadoHints
    highlight! link DiagnosticSignInfo EnfocadoInfos
    highlight! link DiagnosticSignWarn EnfocadoWarns
    highlight! link DiagnosticUnderlineError EnfocadoErrorsUnders
    highlight! link DiagnosticUnderlineHint EnfocadoHintsUnders
    highlight! link DiagnosticUnderlineInfo EnfocadoInfosUnders
    highlight! link DiagnosticUnderlineWarn EnfocadoWarnsUnders
    highlight! link DiagnosticVirtualTextError EnfocadoErrors
    highlight! link DiagnosticVirtualTextHint EnfocadoHints
    highlight! link DiagnosticVirtualTextInfo EnfocadoInfos
    highlight! link DiagnosticVirtualTextWarn EnfocadoWarns

    " Neovim diagnostics old groups.
    highlight! link LspDiagnosticsDefaultError EnfocadoErrors
    highlight! link LspDiagnosticsDefaultHint EnfocadoHints
    highlight! link LspDiagnosticsDefaultInformation EnfocadoInfos
    highlight! link LspDiagnosticsDefaultWarning EnfocadoWarns
    highlight! link LspDiagnosticsFloatingError EnfocadoErrorsFloats
    highlight! link LspDiagnosticsFloatingHint EnfocadoHintsFloats
    highlight! link LspDiagnosticsFloatingInformation EnfocadoInfosFloats
    highlight! link LspDiagnosticsFloatingWarning EnfocadoWarnsFloats
    highlight! link LspDiagnosticsSignError EnfocadoErrors
    highlight! link LspDiagnosticsSignHint EnfocadoHints
    highlight! link LspDiagnosticsSignInformation EnfocadoInfos
    highlight! link LspDiagnosticsSignWarning EnfocadoWarns
    highlight! link LspDiagnosticsUnderlineError EnfocadoErrorsUnders
    highlight! link LspDiagnosticsUnderlineHint EnfocadoHintsUnders
    highlight! link LspDiagnosticsUnderlineInformation EnfocadoInfosUnders
    highlight! link LspDiagnosticsUnderlineWarning EnfocadoWarnsUnders
    highlight! link LspDiagnosticsVirtualTextError EnfocadoErrors
    highlight! link LspDiagnosticsVirtualTextHint EnfocadoHints
    highlight! link LspDiagnosticsVirtualTextInformation EnfocadoInfos
    highlight! link LspDiagnosticsVirtualTextWarning EnfocadoWarns

    " Neovim diagnostics other groups.
    highlight! link LspCodeLens EnfocadoDimmeds
    highlight! link LspCodeLensSeparator EnfocadoIgnores
    highlight! link LspReferenceRead EnfocadoAccents
    highlight! link LspReferenceText EnfocadoAccents
    highlight! link LspReferenceWrite EnfocadoAccents
    highlight! link LspSignatureActiveParameter EnfocadoAccents
  " }}}
  " nvim-treesitter: {{{
    if g:enfocado_style == "neon"
      " Enfocado neon...
      call s:Hl("TSConstructor", s:bold, s:none, s:br_magenta, s:none)
      call s:Hl("TSMethod", s:italic, s:none, s:br_magenta, s:none)
      call s:Hl("TSNamespace", s:bold, s:none, s:br_magenta, s:none)
      call s:Hl("TSTitle", s:bold_italic, s:none, s:fg_1, s:none)
    else
      " Enfocado nature...
      call s:Hl("TSConstructor", s:bold, s:none, s:br_green, s:none)
      call s:Hl("TSMethod", s:italic, s:none, s:br_green, s:none)
      call s:Hl("TSNamespace", s:bold, s:none, s:br_green, s:none)
      call s:Hl("TSTitle", s:bold_italic, s:none, s:fg_1, s:none)
    endif
    call s:Hl("TSComment", s:italic, s:none, s:dim_0, s:none)
    call s:Hl("TSLiteral", s:italic, s:none, s:fg_0, s:none)
    call s:Hl("TSNone", s:italic, s:none, s:fg_0, s:none)
    call s:Hl("TSText", s:italic, s:none, s:fg_0, s:none)
    call s:Hl("TSTextReference", s:italic, s:none, s:fg_0, s:none)
    call s:Hl("TSNote", s:bold, s:br_green, s:bg_1, s:none)
    highlight! link TSAnnotation EnfocadoDimmeds
    highlight! link TSAttribute EnfocadoVariables
    highlight! link TSBoolean EnfocadoTypesBuiltins
    highlight! link TSCharacter EnfocadoConstants
    highlight! link TSConditional EnfocadoKeywords
    highlight! link TSConstant EnfocadoConstants
    highlight! link TSConstBuiltin EnfocadoTypesBuiltins
    highlight! link TSConstMacro EnfocadoTypes
    highlight! link TSCurrentScope EnfocadoVisuals
    highlight! link TSDanger EnfocadoErrors
    highlight! link TSDefinition EnfocadoVisuals
    highlight! link TSDefinitionUsage EnfocadoVisuals
    highlight! link TSEnvironment EnfocadoTypes
    highlight! link TSEnvironmentName EnfocadoVariables
    highlight! link TSException EnfocadoKeywords
    highlight! link TSField EnfocadoVariables
    highlight! link TSFloat EnfocadoConstants
    highlight! link TSFunction EnfocadoFunctions
    highlight! link TSFuncBuiltin EnfocadoFunctionsBuiltins
    highlight! link TSFuncMacro EnfocadoFunctions
    highlight! link TSInclude EnfocadoTypes
    highlight! link TSKeyword EnfocadoKeywords
    highlight! link TSKeywordFunction EnfocadoTypes
    highlight! link TSKeywordOperator EnfocadoKeywords
    highlight! link TSKeywordReturn EnfocadoKeywords
    highlight! link TSLabel EnfocadoTypes
    highlight! link TSMath EnfocadoFunctionsBuiltins
    highlight! link TSNumber EnfocadoConstants
    highlight! link TSOperator EnfocadoKeywords
    highlight! link TSParameter EnfocadoVariables
    highlight! link TSParameterReference EnfocadoVariables
    highlight! link TSProperty EnfocadoVariables
    highlight! link TSPunctDelimiter EnfocadoFgs
    highlight! link TSPunctBracket EnfocadoFgs
    highlight! link TSPunctSpecial EnfocadoTypesBuiltins
    highlight! link TSRepeat EnfocadoKeywords
    highlight! link TSString EnfocadoConstants
    highlight! link TSStringRegex EnfocadoTypesBuiltins
    highlight! link TSStringEscape EnfocadoTypesBuiltins
    highlight! link TSStringSpecial EnfocadoTypesBuiltins
    highlight! link TSSymbol EnfocadoTypes
    highlight! link TSTag EnfocadoKeywords
    highlight! link TSTagAttribute EnfocadoVariables
    highlight! link TSTagDelimiter EnfocadoTypes
    highlight! link TSType EnfocadoTypes
    highlight! link TSTypeBuiltin EnfocadoTypes
    highlight! link TSURI EnfocadoLinks
    highlight! link TSVariable EnfocadoVariables
    highlight! link TSVariableBuiltin EnfocadoVariablesBuiltins
    highlight! link TSWarning EnfocadoWarns
    highlight! TSEmphasis term=italic cterm=italic gui=italic
    highlight! TSStrike term=strikethrough cterm=strikethrough gui=strikethrough
    highlight! TSStrong term=bold cterm=bold gui=bold
    highlight! TSUnderline term=underline cterm=underline gui=underline
  " }}}
  " ------------------------------------------------------------------------------
  " SECTION: Neovim plugins highlight groups.
  " ------------------------------------------------------------------------------
  " copilot.vim: {{{
    if exists('g:loaded_nvim_treesitter')
      call s:Hl("CopilotSuggestion", s:italic, s:bg_0, s:dim_0, s:none)
    else
      call s:Hl("CopilotSuggestion", s:none, s:bg_0, s:dim_0, s:none)
    endif
  " }}}
  " nvim-cmp: {{{
    highlight! link CmpItemAbbrDefault EnfocadoFgs
    highlight! link CmpItemAbbrDeprecatedDefault EnfocadoErrors
    highlight! link CmpItemAbbrMatchDefault EnfocadoAccents
    highlight! link CmpItemAbbrMatchFuzzyDefault EnfocadoAccents
    highlight! link CmpItemKindClassDefault EnfocadoStructs
    highlight! link CmpItemKindColorDefault EnfocadoConstants
    highlight! link CmpItemKindConstantDefault EnfocadoConstants
    highlight! link CmpItemKindConstructorDefault EnfocadoStructs
    highlight! link CmpItemKindDefault EnfocadoFgs
    highlight! link CmpItemKindEnumDefault EnfocadoStructs
    highlight! link CmpItemKindEnumMemberDefault EnfocadoVariables
    highlight! link CmpItemKindEventDefault EnfocadoFunctions
    highlight! link CmpItemKindFieldDefault EnfocadoVariables
    highlight! link CmpItemKindFileDefault EnfocadoFgs
    highlight! link CmpItemKindFolderDefault EnfocadoFgs
    highlight! link CmpItemKindFunctionDefault EnfocadoFunctions
    highlight! link CmpItemKindInterfaceDefault EnfocadoStructs
    highlight! link CmpItemKindKeywordDefault EnfocadoKeywords
    highlight! link CmpItemKindMethodDefault EnfocadoFunctions
    highlight! link CmpItemKindModuleDefault EnfocadoVariables
    highlight! link CmpItemKindOperatorDefault EnfocadoKeywords
    highlight! link CmpItemKindPropertyDefault EnfocadoVariables
    highlight! link CmpItemKindReferenceDefault EnfocadoFgs
    highlight! link CmpItemKindSnippetDefault EnfocadoFgs
    highlight! link CmpItemKindStructDefault EnfocadoStructs
    highlight! link CmpItemKindTextDefault EnfocadoFgs
    highlight! link CmpItemKindTypeParameterDefault EnfocadoTypes
    highlight! link CmpItemKindUnitDefault EnfocadoConstants
    highlight! link CmpItemKindValueDefault EnfocadoConstants
    highlight! link CmpItemKindVariableDefault EnfocadoVariables
    highlight! link CmpItemMenuDefault EnfocadoFloats
  " }}}
  " nvim-lsp-installer: {{{
    highlight! link LspInstallerHeader EnfocadoTitles
    highlight! link LspInstallerServerExpanded EnfocadoFgs
    highlight! link LspInstallerHeading EnfocadoTitles
    highlight! link LspInstallerGreen EnfocadoSuccess
    highlight! link LspInstallerVaderSaber EnfocadoFgs
    highlight! link LspInstallerOrange EnfocadoWarns
    highlight! link LspInstallerMuted EnfocadoIgnores
    highlight! link LspInstallerLabel EnfocadoFgs
    highlight! link LspInstallerError EnfocadoErrors
    highlight! link LspInstallerHighlighted EnfocadoAccents
    highlight! link LspInstallerLink EnfocadoLinks
  " }}}
  " nvim-notify: {{{
    highlight! link NotifyERRORBody EnfocadoFgs
    highlight! link NotifyERRORBorder EnfocadoErrors
    highlight! link NotifyERRORIcon EnfocadoErrors
    highlight! link NotifyERRORTitle EnfocadoErrors
    highlight! link NotifyDEBUGBody EnfocadoFgs
    highlight! link NotifyDEBUGBorder EnfocadoDimmeds
    highlight! link NotifyDEBUGIcon EnfocadoDimmeds
    highlight! link NotifyDEBUGTitle EnfocadoDimmeds
    highlight! link NotifyINFOBody EnfocadoFgs
    highlight! link NotifyINFOBorder EnfocadoInfos
    highlight! link NotifyINFOIcon EnfocadoInfos
    highlight! link NotifyINFOTitle EnfocadoInfos
    highlight! link NotifyTRACEBody EnfocadoFgs
    highlight! link NotifyTRACEBorder EnfocadoRares
    highlight! link NotifyTRACEIcon EnfocadoRares
    highlight! link NotifyTRACETitle EnfocadoRares
    highlight! link NotifyWARNBody EnfocadoFgs
    highlight! link NotifyWARNBorder EnfocadoWarns
    highlight! link NotifyWARNIcon EnfocadoWarns
    highlight! link NotifyWARNTitle EnfocadoWarns
  " }}}
  " nvim-scrollview: {{{
    highlight! link ScrollView EnfocadoLinesHls
  "}}}
  " nvim-tree.lua: {{{
    call s:Hl("NvimTreeNormal", s:none, s:bg_0, s:dim_0, s:none)
    call s:Hl("NvimTreeNormalNC", s:none, s:bg_0, s:dim_0, s:none)
    highlight! link NvimTreeCursorColumn EnfocadoLinesHls
    highlight! link NvimTreeCursorLine EnfocadoLinesHls
    highlight! link NvimTreeEmptyFolderName EnfocadoDimmeds
    highlight! link NvimTreeEndOfBuffer EnfocadoIgnores
    highlight! link NvimTreeExecFile EnfocadoDimmeds
    highlight! link NvimTreeFileDeleted EnfocadoDiffsDeletes
    highlight! link NvimTreeFileDirty EnfocadoDiffsDeletes
    highlight! link NvimTreeFileMerge EnfocadoDiffsChanges
    highlight! link NvimTreeFileNew EnfocadoDiffsAdds
    highlight! link NvimTreeFileRenamed EnfocadoDiffsAdds
    highlight! link NvimTreeFileStaged EnfocadoDiffsChanges
    highlight! link NvimTreeFolderIcon EnfocadoDimmeds
    highlight! link NvimTreeFolderName EnfocadoDimmeds
    highlight! link NvimTreeGitDeleted EnfocadoDiffsDeletes
    highlight! link NvimTreeGitDirty EnfocadoDiffsDeletes
    highlight! link NvimTreeGitIgnored EnfocadoIgnores
    highlight! link NvimTreeGitMerge EnfocadoDiffsChanges
    highlight! link NvimTreeGitNew EnfocadoDiffsAdds
    highlight! link NvimTreeGitRenamed EnfocadoDiffsAdds
    highlight! link NvimTreeGitStaged EnfocadoDiffsChanges
    highlight! link NvimTreeImageFile EnfocadoDimmeds
    highlight! link NvimTreeIndentMarker EnfocadoIgnores
    highlight! link NvimTreeLspDiagnosticsError EnfocadoErrors
    highlight! link NvimTreeLspDiagnosticsHint EnfocadoHints
    highlight! link NvimTreeLspDiagnosticsInformation EnfocadoInfos
    highlight! link NvimTreeLspDiagnosticsWarning EnfocadoWarns
    highlight! link NvimTreeOpenedFile EnfocadoDimmeds
    highlight! link NvimTreeOpenedFolderName EnfocadoDimmeds
    highlight! link NvimTreePopup EnfocadoFloats
    highlight! link NvimTreeRootFolder EnfocadoIgnores
    highlight! link NvimTreeSignColumn SignColumn
    highlight! link NvimTreeSpecialFile EnfocadoDimmeds
    highlight! link NvimTreeStatusLine StatusLine
    highlight! link NvimTreeStatusLineNC StatusLineNC
    highlight! link NvimTreeSymlink EnfocadoDimmeds
    highlight! link NvimTreeVertSplit VertSplit
    highlight! link NvimTreeWindowPicker EnfocadoAccents
  " }}}
  " packer.nvim: {{{
    highlight! link packerWorking EnfocadoAccents
    highlight! link packerSuccess EnfocadoSuccess
    highlight! link packerFail EnfocadoErrors
    highlight! link packerStatus EnfocadoInfos
    highlight! link packerStatusSuccess EnfocadoSuccess
    highlight! link packerStatusFail EnfocadoErrors
    highlight! link packerStatusCommit EnfocadoDimmeds
    highlight! link packerHash EnfocadoDimmeds
    highlight! link packerRelDate EnfocadoDimmeds
    highlight! link packerProgress EnfocadoInfos
    highlight! link packerOutput EnfocadoConstants
    highlight! link packerTimeHigh EnfocadoDimmeds
    highlight! link packerTimeMedium EnfocadoDimmeds
    highlight! link packerTimeLow EnfocadoDimmeds
    highlight! link packerTimeTrivial EnfocadoDimmeds
    highlight! link packerPackageNotLoaded EnfocadoDimmeds
    highlight! link packerPackageName EnfocadoFgs
    highlight! link packerString EnfocadoConstants
    highlight! link packerBool EnfocadoTypesBuiltins
    highlight! link packerBreakingChange EnfocadoWarns
  " }}}
  " telescope.nvim: {{{
    call s:Hl("TelescopePreviewDate", s:none, s:none, s:blue, s:none)
    call s:Hl("TelescopePreviewDirectory", s:bold, s:none, s:br_blue, s:none)
    call s:Hl("TelescopePreviewExecute", s:none, s:none, s:green, s:none)
    call s:Hl("TelescopePreviewLink", s:none, s:none, s:magenta, s:none)
    call s:Hl("TelescopePreviewRead", s:bold, s:none, s:yellow, s:none)
    call s:Hl("TelescopePreviewSize", s:bold, s:none, s:green, s:none)
    call s:Hl("TelescopePreviewUser", s:bold, s:none, s:br_yellow, s:none)
    call s:Hl("TelescopePreviewWrite", s:bold, s:none, s:red, s:none)
    highlight! link TelescopeBorder EnfocadoAccentsFloats
    highlight! link TelescopeMatching EnfocadoAccents
    highlight! link TelescopeMultiSelection EnfocadoVisuals
    highlight! link TelescopeNormal EnfocadoFloats
    highlight! link TelescopePreviewBorder EnfocadoAccents
    highlight! link TelescopePreviewMatch EnfocadoSearchs
    highlight! link TelescopePreviewMessage EnfocadoInfos
    highlight! link TelescopePreviewMessageFillchar EnfocadoInfos
    highlight! link TelescopePreviewNormal EnfocadoFloats
    highlight! link TelescopePreviewTitle EnfocadoTitles
    highlight! link TelescopePromptBorder EnfocadoAccents
    highlight! link TelescopePromptCounter EnfocadoInfos
    highlight! link TelescopePromptNormal EnfocadoFloats
    highlight! link TelescopePromptPrefix EnfocadoFgs
    highlight! link TelescopePromptTitle EnfocadoTitles
    highlight! link TelescopeResultsBorder EnfocadoAccents
    highlight! link TelescopeResultsDiffAdd EnfocadoDiffsAdds
    highlight! link TelescopeResultsDiffChange EnfocadoDiffsChanges
    highlight! link TelescopeResultsDiffDelete EnfocadoDiffsDeletes
    highlight! link TelescopeResultsDiffUntracked EnfocadoIgnores
    highlight! link TelescopeResultsClass EnfocadoStructs
    highlight! link TelescopeResultsComment EnfocadoDimmeds
    highlight! link TelescopeResultsConstant EnfocadoConstants
    highlight! link TelescopeResultsField EnfocadoVariables
    highlight! link TelescopeResultsFunction EnfocadoFunctions
    highlight! link TelescopeResultsIdentifier EnfocadoVariables
    highlight! link TelescopeResultsLineNr EnfocadoIgnores
    highlight! link TelescopeResultsMethod EnfocadoFunctions
    highlight! link TelescopeResultsNormal EnfocadoFloats
    highlight! link TelescopeResultsNumber EnfocadoConstants
    highlight! link TelescopeResultsOperator EnfocadoKeywords
    highlight! link TelescopeResultsSpecialComment EnfocadoKeywordsBuiltins
    highlight! link TelescopeResultsStruct EnfocadoStructs
    highlight! link TelescopeResultsTitle EnfocadoTitles
    highlight! link TelescopeResultsVariable EnfocadoVariables
    highlight! link TelescopeSelection EnfocadoVisuals
    highlight! link TelescopeSelectionCaret EnfocadoVisuals
    highlight! link TelescopeTitle EnfocadoTitles
  " }}}
  " todo-comments.nvim: {{{
    call s:Hl("TodoBgFIX", s:bold, s:br_red, s:bg_1, s:none)
    call s:Hl("TodoBgHACK", s:bold, s:br_yellow, s:bg_1, s:none)
    call s:Hl("TodoBgNOTE", s:bold, s:br_green, s:bg_1, s:none)
    call s:Hl("TodoBgPERF", s:bold, s:br_magenta, s:bg_1, s:none)
    call s:Hl("TodoBgTODO", s:bold, s:br_cyan, s:bg_1, s:none)
    call s:Hl("TodoBgWARN", s:bold, s:br_orange, s:bg_1, s:none)
    call s:Hl("TodoFgFIX", s:none, s:none, s:br_red, s:none)
    call s:Hl("TodoFgHACK", s:none, s:none, s:br_yellow, s:none)
    call s:Hl("TodoFgNOTE", s:none, s:none, s:br_green, s:none)
    call s:Hl("TodoFgPERF", s:none, s:none, s:br_magenta, s:none)
    call s:Hl("TodoFgTODO", s:none, s:none, s:br_cyan, s:none)
    call s:Hl("TodoFgWARN", s:none, s:none, s:br_orange, s:none)
    call s:Hl("TodoSignFIX", s:none, s:none, s:br_red, s:none)
    call s:Hl("TodoSignHACK", s:none, s:none, s:br_yellow, s:none)
    call s:Hl("TodoSignNOTE", s:none, s:none, s:br_green, s:none)
    call s:Hl("TodoSignPERF", s:none, s:none, s:br_magenta, s:none)
    call s:Hl("TodoSignTODO", s:none, s:none, s:br_cyan, s:none)
    call s:Hl("TodoSignWARN", s:none, s:none, s:br_orange, s:none)
  " }}}
endif
" ------------------------------------------------------------------------------
" SECTION: Vim plugins highlight groups.
" ------------------------------------------------------------------------------
" coc.nvim: {{{
  " Coc markdown groups.
  call s:Hl("CocMarkdownHeader", s:bold, s:bg_1, s:fg_1, s:none)
  call s:Hl("CocMarkdownLink", s:underline, s:bg_1, s:br_cyan, s:br_cyan)
  highlight! CocBold term=bold cterm=bold gui=bold
  highlight! CocItalic term=italic cterm=italic gui=italic
  highlight! CocStrikeThrough term=strikethrough cterm=strikethrough gui=strikethrough
  highlight! CocUnderline term=underline cterm=underline gui=underline

  " Coc diagnostics groups.
  call s:Hl("CocDeprecatedHighlight", s:strike, s:bg_2, s:fg_0, s:none)
  call s:Hl("CocUnusedHighlight", s:none, s:bg_2, s:dim_0, s:none)
  highlight! link CocErrorHighlight EnfocadoErrorsUnders
  highlight! link CocErrorLine EnfocadoNones
  highlight! link CocErrorSign EnfocadoErrors
  highlight! link CocErrorVirtualText EnfocadoErrors
  highlight! link CocFadeOut EnfocadoDimmeds
  highlight! link CocHintHighlight EnfocadoHintsUnders
  highlight! link CocHintLine EnfocadoNones
  highlight! link CocHintSign EnfocadoHints
  highlight! link CocHintVirtualText EnfocadoHints
  highlight! link CocInfoHighlight EnfocadoInfosUnders
  highlight! link CocInfoLine EnfocadoNones
  highlight! link CocInfoSign EnfocadoInfos
  highlight! link CocInfoVirtualText EnfocadoInfos
  highlight! link CocWarningHighlight EnfocadoWarnsUnders
  highlight! link CocWarningLine EnfocadoNones
  highlight! link CocWarningSign EnfocadoWarns
  highlight! link CocWarningVirtualText EnfocadoWarns

  " Coc document highlight groups.
  highlight! link CocHighlightRead EnfocadoAccents
  highlight! link CocHighlightWrite EnfocadoAccents
  highlight! link CocHighlightText EnfocadoAccents

  " Coc float window/popup groups.
  highlight! link CocErrorFloat EnfocadoErrorsFloats
  highlight! link CocFloating EnfocadoFloats
  highlight! link CocHintFloat EnfocadoHintsFloats
  highlight! link CocInfoFloat EnfocadoInfosFloats
  highlight! link CocWarningFloat EnfocadoWarnsFloats

  " Coc list groups.
  highlight! link CocListMode EnfocadoAccentsFloats
  highlight! link CocListPath EnfocadoStatusLinesNC
  highlight! link CocSelectedLine EnfocadoVisuals
  highlight! link CocSelectedText EnfocadoVisuals

  " Coc tree view groups.
  highlight! link CocTreeDescription EnfocadoDimmeds
  highlight! link CocTreeOpenClose EnfocadoDimmeds
  highlight! link CocTreeSelected EnfocadoVisuals
  highlight! link CocTreeTitle EnfocadoTitles

  " Coc symbol icons groups.
  highlight! link CocSymbolArray EnfocadoVariables
  highlight! link CocSymbolBoolean EnfocadoTypesBuiltins
  highlight! link CocSymbolClass EnfocadoStructs
  highlight! link CocSymbolConstant EnfocadoConstants
  highlight! link CocSymbolConstructor EnfocadoStructs
  highlight! link CocSymbolDefault EnfocadoFgs
  highlight! link CocSymbolEnum EnfocadoStructs
  highlight! link CocSymbolEnumMember EnfocadoVariables
  highlight! link CocSymbolEvent EnfocadoFunctions
  highlight! link CocSymbolField EnfocadoVariables
  highlight! link CocSymbolFile EnfocadoFgs
  highlight! link CocSymbolFunction EnfocadoFunctions
  highlight! link CocSymbolInterface EnfocadoStructs
  highlight! link CocSymbolKey EnfocadoVariables
  highlight! link CocSymbolMethod EnfocadoFunctions
  highlight! link CocSymbolModule EnfocadoVariables
  highlight! link CocSymbolNamespace EnfocadoStructs
  highlight! link CocSymbolNull EnfocadoTypesBuiltins
  highlight! link CocSymbolNumber EnfocadoConstants
  highlight! link CocSymbolObject EnfocadoVariables
  highlight! link CocSymbolOperator EnfocadoKeywords
  highlight! link CocSymbolPackage EnfocadoVariables
  highlight! link CocSymbolProperty EnfocadoVariables
  highlight! link CocSymbolString EnfocadoConstants
  highlight! link CocSymbolStruct EnfocadoStructs
  highlight! link CocSymbolTypeParameter EnfocadoTypes
  highlight! link CocSymbolVariable EnfocadoVariables

  " Other coc groups.
  highlight! link CocCodeLens EnfocadoDimmeds
  highlight! link CocCursorRange EnfocadoVisuals
  highlight! link CocHoverRange EnfocadoVisuals
  highlight! link CocMenuSel EnfocadoVisuals
  highlight! link CocSelectedRange EnfocadoVisuals

  " Coc semantic highlight groups.
  if exists('g:coc_default_semantic_highlight_groups') &&
        \ g:coc_default_semantic_highlight_groups == 1
    highlight! link CocSem_class EnfocadoStructs
    highlight! link CocSem_comment EnfocadoDimmeds
    highlight! link CocSem_enum EnfocadoVariables
    highlight! link CocSem_enumMember EnfocadoVariables
    highlight! link CocSem_event EnfocadoFunctions
    highlight! link CocSem_function EnfocadoFunctions
    highlight! link CocSem_interface EnfocadoStructs
    highlight! link CocSem_keyword EnfocadoKeywords
    highlight! link CocSem_macro EnfocadoFunctions
    highlight! link CocSem_method EnfocadoFunctions
    highlight! link CocSem_modifier EnfocadoStructs
    highlight! link CocSem_namespace EnfocadoStructs
    highlight! link CocSem_number EnfocadoConstants
    highlight! link CocSem_operator EnfocadoKeywords
    highlight! link CocSem_parameter EnfocadoVariables
    highlight! link CocSem_property EnfocadoVariables
    highlight! link CocSem_regexp EnfocadoTypesBuiltins
    highlight! link CocSem_string EnfocadoConstants
    highlight! link CocSem_struct EnfocadoStructs
    highlight! link CocSem_type EnfocadoTypes
    highlight! link CocSem_typeParameter EnfocadoTypes
    highlight! link CocSem_variable EnfocadoVariables
  endif
" }}}
" dashboard-nvim: {{{
  highlight! link DashboardCenter EnfocadoDimmeds
  highlight! link DashboardFooter EnfocadoIgnores
  highlight! link DashboardHeader EnfocadoAccents
  highlight! link DashboardShortCut EnfocadoDimmeds
" }}}
" fzf.vim: {{{
  " fzf apply enfocado groups.
  if !exists('g:fzf_colors')
    let g:fzf_colors = {
          \ 'bg'     : [ 'bg', 'EnfocadoFloats'  ],
          \ 'bg+'    : [ 'bg', 'EnfocadoVisuals' ],
          \ 'border' : [ 'fg', 'EnfocadoAccents' ],
          \ 'fg'     : [ 'fg', 'EnfocadoFloats'  ],
          \ 'fg+'    : [ 'fg', 'EnfocadoFloats'  ],
          \ 'header' : [ 'fg', 'EnfocadoTitles'  ],
          \ 'hl'     : [ 'fg', 'EnfocadoAccents' ],
          \ 'hl+'    : [ 'fg', 'EnfocadoAccents' ],
          \ 'info'   : [ 'fg', 'EnfocadoInfos'   ],
          \ 'marker' : [ 'fg', 'EnfocadoFloats'  ],
          \ 'pointer': [ 'fg', 'EnfocadoFloats'  ],
          \ 'prompt' : [ 'fg', 'EnfocadoDimmeds' ],
          \ 'spinner': [ 'fg', 'EnfocadoInfos'   ]
        \ }
  endif

  " Others FZF groups.
  call s:Hl("Fzf1", s:bold, s:bg_2, s:dim_0, s:none)
  call s:Hl("Fzf2", s:none, s:bg_1, s:dim_0, s:none)
  call s:Hl("Fzf3", s:none, s:bg_0, s:dim_0, s:none)
" }}}
" nerdtree: {{{
  call s:Hl("NERDTreeFile", s:none, s:none, s:dim_0, s:none)
  highlight! link NERDTreeBookmark EnfocadoDimmeds
  highlight! link NERDTreeBookmarkHeader EnfocadoTitles
  highlight! link NERDTreeClosable EnfocadoDimmeds
  highlight! link NERDTreeCWD EnfocadoIgnores
  highlight! link NERDTreeDir EnfocadoDimmeds
  highlight! link NERDTreeDirSlash EnfocadoDimmeds
  highlight! link NERDTreeExecFile EnfocadoDimmeds
  highlight! link NERDTreeHelp EnfocadoFgs
  highlight! link NERDTreeHelpCommand EnfocadoFgs
  highlight! link NERDTreeHelpKey EnfocadoFgs
  highlight! link NERDTreeHelpTitle EnfocadoTitles
  highlight! link NERDTreeLink EnfocadoDimmeds
  highlight! link NERDTreeLinkDir EnfocadoDimmeds
  highlight! link NERDTreeLinkFile EnfocadoDimmeds
  highlight! link NERDTreeLinkTarget EnfocadoIgnores
  highlight! link NERDTreeOpenable EnfocadoDimmeds
  highlight! link NERDTreeRO EnfocadoDimmeds
  highlight! link NERDTreeToggleOff EnfocadoDimmeds
  highlight! link NERDTreeToggleOn EnfocadoFgs
  highlight! link NERDTreeUp EnfocadoDimmeds
" }}}
" netrw: {{{
  highlight! link netrwClassify EnfocadoDimmeds
  highlight! link netrwCmdSep EnfocadoIgnores
  highlight! link netrwComment EnfocadoDimmeds
  highlight! link netrwDir EnfocadoDimmeds
  highlight! link netrwExe EnfocadoDimmeds
  highlight! link netrwHelpCmd EnfocadoFgs
  highlight! link netrwLink EnfocadoDimmeds
  highlight! link netrwList EnfocadoDimmeds
  highlight! link netrwPlain EnfocadoDimmeds
  highlight! link netrwSymLink EnfocadoDimmeds
  highlight! link netrwVersion EnfocadoIgnores
" }}}
" rainbow: {{{
  if g:enfocado_style == "neon"
    let s:rainbow_guifgs   = [ s:violet[0], s:cyan[0], s:magenta[0], s:br_violet[0] ]
    let s:rainbow_ctermfgs = [ s:violet[1], s:cyan[1], s:magenta[1], s:br_violet[1] ]
  else
    let s:rainbow_guifgs   = [ s:blue[0], s:cyan[0], s:green[0], s:br_blue[0] ]
    let s:rainbow_ctermfgs = [ s:blue[1], s:cyan[1], s:green[1], s:br_blue[1] ]
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
" vim-floaterm: {{{
  highlight! link Floaterm EnfocadoFloats
  highlight! link FloatermBorder EnfocadoAccentsFloats
  highlight! link FloatermNC EnfocadoFloats
" }}}
" vim-matchup: {{{
  highlight! link MatchBackground EnfocadoLinesHls
  highlight! link MatchParenCur EnfocadoVisuals
  highlight! link MatchWord EnfocadoVisuals
  highlight! link MatchWordCur EnfocadoVisuals
" }}}
" vim-multiple-cursors: {{{
  highlight! link multiple_cursors_cursor EnfocadoCursors
  highlight! link multiple_cursors_visual EnfocadoVisuals
" }}}
" vim-plug: {{{
  highlight! link plug1 EnfocadoTitles
  highlight! link plug2 EnfocadoAccents
  highlight! link plugBracket EnfocadoFgs
  highlight! link plugCommit EnfocadoFgs
  highlight! link plugDash EnfocadoDimmeds
  highlight! link plugDeleted EnfocadoIgnores
  highlight! link plugEdge EnfocadoDimmeds
  highlight! link plugError EnfocadoErrors
  highlight! link plugH2 EnfocadoTitles
  highlight! link plugInstall EnfocadoAccents
  highlight! link plugMessage EnfocadoInfos
  highlight! link plugName EnfocadoFgs
  highlight! link plugNotLoaded EnfocadoDimmeds
  highlight! link plugNumber EnfocadoConstants
  highlight! link plugPlus EnfocadoFgs
  highlight! link plugRelDate EnfocadoDimmeds
  highlight! link plugSha EnfocadoDimmeds
  highlight! link plugStar EnfocadoDimmeds
  highlight! link plugTag EnfocadoFgs
  highlight! link plugUpdate EnfocadoAccents
  highlight! link plugX EnfocadoFgs
" }}}
" vim-signify: {{{
  if exists('g:signify_line_highlight') && g:signify_line_highlight == 1
    highlight! link SignifyLineAdd EnfocadoDiffsAdds
    highlight! link SignifyLineChange EnfocadoDiffsChanges
    highlight! link SignifyLineChangeDelete EnfocadoDiffsChanges
    highlight! link SignifyLineDelete EnfocadoDiffsDeletes
    highlight! link SignifyLineDeleteFirstLine EnfocadoDiffsDeletes
  endif
  highlight! link SignifySignAdd EnfocadoDiffsAdds
  highlight! link SignifySignChange EnfocadoDiffsChanges
  highlight! link SignifySignChangeDelete EnfocadoDiffsChanges
  highlight! link SignifySignDelete EnfocadoDiffsDeletes
  highlight! link SignifySignDeleteFirstLine EnfocadoDiffsDeletes
" }}}
" vim-which-key: {{{
  highlight! link WhichKey EnfocadoFgs
  highlight! link WhichKeyDesc EnfocadoFgs
  highlight! link WhichKeyFloat EnfocadoFloats
  highlight! link WhichKeyGroup EnfocadoDimmeds
  highlight! link WhichKeySeparator EnfocadoIgnores
  highlight! link WhichKeyValue EnfocadoFgs
" }}}
" vista.vim: {{{
  highlight! link VistaBracket EnfocadoIgnores
  highlight! link VistaChildrenNr EnfocadoIgnores
  highlight! link VistaColon EnfocadoIgnores
  highlight! link VistaFloat EnfocadoFloats
  highlight! link VistaIcon EnfocadoAccents
  highlight! link VistaLineNr EnfocadoIgnores
  highlight! link VistaPrefix EnfocadoIgnores
  highlight! link VistaScope EnfocadoDimmeds
  highlight! link VistaTag EnfocadoDimmeds
" }}}
" vim: set foldmethod=marker:
