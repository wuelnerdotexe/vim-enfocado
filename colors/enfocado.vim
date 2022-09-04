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

" The script ends if the theme is not supported.
if !(has('termguicolors') && &termguicolors) && &t_Co != 256 &&
      \ !has('gui_running') && !has('syntax')
  finish
endif

" The Enfocado theme is initialized.
let g:colors_name = 'enfocado'

" Enfocado configuration variables are initialized.
let g:enfocado_style = get(g:, 'enfocado_style', 'nature')
let g:enfocado_plugins = get(g:, 'enfocado_plugins', ['all'])

" Get the color scheme.
let s:colorScheme = enfocado#getColorScheme()

" The color scheme to use are assigned.
let s:bg_0 = s:colorScheme.bg_0
let s:bg_1 = s:colorScheme.bg_1
let s:bg_2 = s:colorScheme.bg_2
let s:dim_0 = s:colorScheme.dim_0
let s:fg_0 = s:colorScheme.fg_0
let s:fg_1 = s:colorScheme.fg_1

let s:red = s:colorScheme.red
let s:green = s:colorScheme.green
let s:yellow = s:colorScheme.yellow
let s:blue = s:colorScheme.blue
let s:magenta = s:colorScheme.magenta
let s:cyan = s:colorScheme.cyan
let s:orange = s:colorScheme.orange
let s:violet = s:colorScheme.violet

let s:br_red = s:colorScheme.br_red
let s:br_green = s:colorScheme.br_green
let s:br_yellow = s:colorScheme.br_yellow
let s:br_blue = s:colorScheme.br_blue
let s:br_magenta = s:colorScheme.br_magenta
let s:br_cyan = s:colorScheme.br_cyan
let s:br_orange = s:colorScheme.br_orange
let s:br_violet = s:colorScheme.br_violet

let s:base = s:colorScheme.base

let s:blend_search = s:colorScheme.blend_search
let s:blend_error = s:colorScheme.blend_error
let s:blend_info = s:colorScheme.blend_info
let s:blend_hint = s:colorScheme.blend_hint
let s:blend_warn = s:colorScheme.blend_warn
let s:blend_added = s:colorScheme.blend_added
let s:blend_removed = s:colorScheme.blend_removed
let s:blend_modified = s:colorScheme.blend_modified

" Attributes are declared.
let s:none = ['NONE', 'NONE']
let s:nocombine = ['nocombine,NONE', 'nocombine,NONE']
let s:bold = ['nocombine,bold', 'nocombine,bold']
let s:italic = ['nocombine,italic', 'nocombine,italic']
let s:bold_italic = ['nocombine,bold,italic', 'nocombine,bold,italic']
let s:underline = ['underline', 'underline']
let s:undercurl = ['undercurl', 'undercurl']

" All highlights are removed.
if !exists('syntax_on') || !exists('syntax_manual')
  syntax enable
  syntax reset
else
  syntax reset
endif

" Vim terminal variables are assigned.
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

" Neovim terminal variables are assigned.
let g:terminal_color_0 = s:bg_1[0]
let g:terminal_color_1 = s:red[0]
let g:terminal_color_2 = s:green[0]
let g:terminal_color_3 = s:yellow[0]
let g:terminal_color_4 = s:blue[0]
let g:terminal_color_5 = s:magenta[0]
let g:terminal_color_6 = s:cyan[0]
let g:terminal_color_7 = s:dim_0[0]
let g:terminal_color_8 = s:bg_2[0]
let g:terminal_color_9 = s:br_red[0]
let g:terminal_color_10 = s:br_green[0]
let g:terminal_color_11 = s:br_yellow[0]
let g:terminal_color_12 = s:br_blue[0]
let g:terminal_color_13 = s:br_magenta[0]
let g:terminal_color_14 = s:br_cyan[0]
let g:terminal_color_15 = s:fg_1[0]
" ------------------------------------------------------------------------------
" SECTION: Neo(Vim) base groups highlighting.
" ------------------------------------------------------------------------------
" Enfocado style diffs.
if g:enfocado_style == 'neon'
  " Neon interfaz.
  call enfocado#highlighter('Accent', s:none, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('FloatBorder', s:nocombine, s:bg_1, s:br_magenta, s:none)
  call enfocado#highlighter('Match', s:bold, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('MatchFuzzy', s:nocombine, s:none, s:magenta, s:none)
  call enfocado#highlighter('ToolbarButton', s:nocombine, s:magenta, s:bg_1, s:none)
  call enfocado#highlighter('WildMenu', s:bold, s:bg_2, s:br_magenta, s:none)

  " Neon syntax.
  call enfocado#highlighter('Function', s:italic, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('FunctionBuiltin', s:italic, s:none, s:br_green, s:none)
  call enfocado#highlighter('Identifier', s:nocombine, s:none, s:magenta, s:none)
  call enfocado#highlighter('IdentifierBuiltin', s:nocombine, s:none, s:green, s:none)
  call enfocado#highlighter('PreProc', s:nocombine, s:none, s:violet, s:none)
  call enfocado#highlighter('Special', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('Statement', s:nocombine, s:none, s:violet, s:none)
  call enfocado#highlighter('StatementBuiltin', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('Type', s:bold, s:none, s:br_violet, s:none)
  call enfocado#highlighter('TypeBuiltin', s:bold, s:none, s:br_blue, s:none)
else
  " Nature interfaz.
  call enfocado#highlighter('Accent', s:none, s:none, s:br_green, s:none)
  call enfocado#highlighter('FloatBorder', s:nocombine, s:bg_1, s:br_green, s:none)
  call enfocado#highlighter('Match', s:bold, s:none, s:br_green, s:none)
  call enfocado#highlighter('MatchFuzzy', s:nocombine, s:none, s:green, s:none)
  call enfocado#highlighter('ToolbarButton', s:nocombine, s:green, s:bg_1, s:none)
  call enfocado#highlighter('WildMenu', s:bold, s:bg_2, s:br_green, s:none)

  " Nature syntax.
  call enfocado#highlighter('Function', s:italic, s:none, s:br_green, s:none)
  call enfocado#highlighter('FunctionBuiltin', s:italic, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('Identifier', s:nocombine, s:none, s:green, s:none)
  call enfocado#highlighter('IdentifierBuiltin', s:nocombine, s:none, s:magenta, s:none)
  call enfocado#highlighter('PreProc', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('Special', s:nocombine, s:none, s:br_violet, s:none)
  call enfocado#highlighter('Statement', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('StatementBuiltin', s:nocombine, s:none, s:violet, s:none)
  call enfocado#highlighter('Type', s:bold, s:none, s:br_blue, s:none)
  call enfocado#highlighter('TypeBuiltin', s:bold, s:none, s:br_violet, s:none)
endif

" General interfaz.
if &relativenumber
  call enfocado#highlighter('LineNr', s:none, s:none, s:dim_0, s:none)
  call enfocado#highlighter('LineNrAbove', s:none, s:none, s:bg_2, s:none)
  call enfocado#highlighter('LineNrBelow', s:none, s:none, s:bg_2, s:none)
else
  call enfocado#highlighter('LineNr', s:none, s:none, s:bg_2, s:none)
  highlight! link LineNrAbove LineNr
  highlight! link LineNrBelow LineNr
endif
if (has('termguicolors') && &termguicolors) || has('gui_running')
  call enfocado#highlighter('IncSearch', s:none, s:blend_search, s:none, s:none)
  call enfocado#highlighter('Search', s:none, s:blend_search, s:none, s:none)
else
  call enfocado#highlighter('IncSearch', s:none, s:br_yellow, s:bg_1, s:none)
  call enfocado#highlighter('Search', s:none, s:br_yellow, s:bg_1, s:none)
endif
call enfocado#highlighter('ColorColumn', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('Conceal', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('Cursor', s:none, s:fg_0, s:bg_1, s:none)
call enfocado#highlighter('CursorColumn', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('CursorLine', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('CursorLineNr', s:none, s:none, s:dim_0, s:none)
call enfocado#highlighter('DiffAdd', s:none, s:none, s:green, s:none)
call enfocado#highlighter('DiffChange', s:none, s:none, s:yellow, s:none)
call enfocado#highlighter('DiffDelete', s:none, s:none, s:red, s:none)
call enfocado#highlighter('DiffText', s:none, s:bg_2, s:yellow, s:none)
call enfocado#highlighter('Dimmed', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('Directory', s:bold, s:none, s:br_blue, s:none)
call enfocado#highlighter('ErrorMsg', s:nocombine, s:none, s:br_red, s:none)
call enfocado#highlighter('FileLink', s:bold, s:none, s:br_cyan, s:none)
call enfocado#highlighter('FileExec', s:nocombine, s:none, s:green, s:none)
call enfocado#highlighter('Folded', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('FoldColumn', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('Ignore', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('lCursor', s:none, s:fg_0, s:bg_1, s:none)
call enfocado#highlighter('MatchParen', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('ModeMsg', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('MoreMsg', s:nocombine, s:none, s:br_yellow, s:none)
call enfocado#highlighter('None', s:none, s:none, s:none, s:none)
call enfocado#highlighter('NonText', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('Normal', s:nocombine, s:bg_0, s:fg_0, s:none)
call enfocado#highlighter('NormalFloat', s:nocombine, s:bg_1, s:fg_0, s:none)
call enfocado#highlighter('NvimInternalError', s:nocombine, s:none, s:br_red, s:none)
call enfocado#highlighter('Pmenu', s:nocombine, s:bg_1, s:fg_0, s:none)
call enfocado#highlighter('PmenuSbar', s:nocombine, s:bg_1, s:none, s:none)
call enfocado#highlighter('PmenuSel', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('PmenuThumb', s:nocombine, s:bg_2, s:none, s:none)
call enfocado#highlighter('Question', s:nocombine, s:none, s:br_yellow, s:none)
call enfocado#highlighter('QuickFixLine', s:none, s:bg_1, s:br_orange, s:none)
call enfocado#highlighter('RedrawDebugClear', s:none, s:none, s:br_yellow, s:none)
call enfocado#highlighter('RedrawDebugComposed', s:none, s:none, s:br_green, s:none)
call enfocado#highlighter('RedrawDebugNormal', s:none, s:none, s:fg_1, s:none)
call enfocado#highlighter('RedrawDebugRecompose', s:none, s:none, s:br_red, s:none)
call enfocado#highlighter('SignColumn', s:none, s:none, s:none, s:none)
call enfocado#highlighter('SpecialKey', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('SpellBad', s:undercurl, s:none, s:none, s:red)
call enfocado#highlighter('SpellCap', s:undercurl, s:none, s:none, s:blue)
call enfocado#highlighter('SpellLocal', s:undercurl, s:none, s:none, s:cyan)
call enfocado#highlighter('SpellRare', s:undercurl, s:none, s:none, s:magenta)
call enfocado#highlighter('StatusLine', s:nocombine, s:bg_1, s:dim_0, s:none)
call enfocado#highlighter('StatusLineNC', s:nocombine, s:bg_1, s:bg_2, s:none)
call enfocado#highlighter('StatuslineTerm', s:nocombine, s:bg_1, s:dim_0, s:none)
call enfocado#highlighter('StatuslineTermNC', s:nocombine, s:bg_1, s:bg_2, s:none)
call enfocado#highlighter('Success', s:nocombine, s:none, s:br_green, s:none)
call enfocado#highlighter('TabLine', s:nocombine, s:bg_1, s:bg_2, s:none)
call enfocado#highlighter('TabLineFill', s:nocombine, s:bg_1, s:bg_2, s:none)
call enfocado#highlighter('TabLineSel', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('TermCursor', s:none, s:fg_0, s:bg_1, s:none)
call enfocado#highlighter('Title', s:bold, s:none, s:fg_1, s:none)
call enfocado#highlighter('ToolbarLine', s:nocombine, s:bg_1, s:dim_0, s:none)
call enfocado#highlighter('VertSplit', s:nocombine, s:none, s:base, s:none)
call enfocado#highlighter('Visual', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('VisualNC', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('VisualNOS', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('WarningMsg', s:nocombine, s:none, s:br_orange, s:none)
highlight! link CursorLineSign CursorLineNr
highlight! link CursorLineFold CursorLine
highlight! link EndOfBuffer NonText
highlight! link Line ColorColumn
highlight! link MsgArea Dimmed
highlight! link MsgSeparator StatusLineNC
highlight! link NormalNC Normal
highlight! link Substitute Search
highlight! link TermCursorNC None
highlight! link Whitespace NonText
highlight! link WinBar Dimmed
highlight! link WinBarNC WinBar
highlight! link WinSeparator VertSplit
if has('nvim')
  highlight! FloatShadow ctermbg=16 guibg=#000000 blend=10
  highlight! FloatShadowThrough ctermbg=16 guibg=#000000 blend=10
endif

" General syntax.
call enfocado#highlighter('Comment', s:italic, s:none, s:dim_0, s:none)
call enfocado#highlighter('ConstIdentifier', s:none, s:none, s:yellow, s:none)
call enfocado#highlighter('Error', s:none, s:none, s:br_red, s:none)
call enfocado#highlighter('Exception', s:nocombine, s:none, s:orange, s:none)
call enfocado#highlighter('Link', s:underline, s:none, s:br_cyan, s:br_cyan)
call enfocado#highlighter('String', s:nocombine, s:none, s:cyan, s:br_cyan)
call enfocado#highlighter('Text', s:nocombine, s:none, s:fg_0, s:none)
call enfocado#highlighter('Todo', s:bold, s:br_cyan, s:bg_1, s:none)
highlight! link Boolean StatementBuiltin
highlight! link Character String
highlight! link Conditional Statement
highlight! link Constant Text
highlight! link Debug Success
highlight! link Define PreProc
highlight! link Delimiter Text
highlight! link Float Number
highlight! link Include PreProc
highlight! link Keyword Statement
highlight! link Label Statement
highlight! link Macro Define
highlight! link Method Function
highlight! link Number Constant
highlight! link Operator Statement
highlight! link PreCondit PreProc
highlight! link Property Type
highlight! link Repeat Statement
highlight! link SpecialChar StatementBuiltin
highlight! link SpecialComment StatementBuiltin
highlight! link StorageClass Type
highlight! link Structure Type
highlight! link Tag Statement
highlight! link Typedef Type
highlight! Underlined term=underline cterm=underline gui=underline

" Neovim diagnostic.
call enfocado#highlighter('DiagnosticError', s:bold, s:none, s:br_red, s:none)
call enfocado#highlighter('DiagnosticHint', s:bold, s:none, s:br_blue, s:none)
call enfocado#highlighter('DiagnosticInfo', s:bold, s:none, s:br_yellow, s:none)
call enfocado#highlighter('DiagnosticWarn', s:bold, s:none, s:br_orange, s:none)
call enfocado#highlighter('DiagnosticFloatingError', s:bold, s:bg_1, s:br_red, s:none)
call enfocado#highlighter('DiagnosticFloatingHint', s:bold, s:bg_1, s:br_blue, s:none)
call enfocado#highlighter('DiagnosticFloatingInfo', s:bold, s:bg_1, s:br_yellow, s:none)
call enfocado#highlighter('DiagnosticFloatingWarn', s:bold, s:bg_1, s:br_orange, s:none)
call enfocado#highlighter('DiagnosticUnderlineError', s:undercurl, s:none, s:none, s:br_red)
call enfocado#highlighter('DiagnosticUnderlineHint', s:undercurl, s:none, s:none, s:br_blue)
call enfocado#highlighter('DiagnosticUnderlineInfo', s:undercurl, s:none, s:none, s:br_yellow)
call enfocado#highlighter('DiagnosticUnderlineWarn', s:undercurl, s:none, s:none, s:br_orange)
if (has('termguicolors') && &termguicolors) || has('gui_running')
  call enfocado#highlighter('DiagnosticVirtualTextError', s:bold, s:blend_error, s:br_red, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextHint', s:bold, s:blend_hint, s:br_blue, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextInfo', s:bold, s:blend_info, s:br_yellow, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextWarn', s:bold, s:blend_warn, s:br_orange, s:none)
else
  highlight! link DiagnosticVirtualTextError DiagnosticFloatingError
  highlight! link DiagnosticVirtualTextHint DiagnosticFloatingHint
  highlight! link DiagnosticVirtualTextInfo DiagnosticFloatingInfo
  highlight! link DiagnosticVirtualTextWarn DiagnosticFloatingWarn
endif
highlight! link DiagnosticSignError DiagnosticError
highlight! link DiagnosticSignHint DiagnosticHint
highlight! link DiagnosticSignInfo DiagnosticInfo
highlight! link DiagnosticSignWarn DiagnosticWarn
" ------------------------------------------------------------------------------
" SECTION: Filetypes syntax groups highlighting.
" ------------------------------------------------------------------------------
" Help.
highlight! link helpHeadline Title
highlight! link helpSectionDelim Dimmed
highlight! link helpExample Text
highlight! link helpBar Dimmed
highlight! link helpHyperTextJump String
highlight! link helpHyperTextEntry String
highlight! link helpVim Accent
highlight! link helpCommand Text
highlight! link helpHeader Title
highlight! link helpNote Todo
highlight! link helpWarning DiagnosticWarn
highlight! link helpDeprecated DiagnosticError
highlight! link helpURL Link

" Diff.
highlight! link diffAdded DiffAdd
highlight! link diffBDiffer Text
highlight! link diffChanged DiffChange
highlight! link diffComment Comment
highlight! link diffCommon Text
highlight! link diffDiffer Text
highlight! link diffFile Text
highlight! link diffIdentical Text
highlight! link diffIndexLine Text
highlight! link diffIsA Text
highlight! link diffLine Title
highlight! link diffNewFile Text
highlight! link diffNoEOL Text
highlight! link diffOldFile Text
highlight! link diffOnly Text
highlight! link diffRemoved DiffDelete
highlight! link diffSubname Title
" ------------------------------------------------------------------------------
" SECTION: Plugins for Neo(Vim) groups highlighting.
" ------------------------------------------------------------------------------
" ale: {{{
  if enfocado#pluginIsActivated('ale', 0)
    if (has('termguicolors') && &termguicolors) || has('gui_running')
      call enfocado#highlighter('ALEErrorLine', s:none, s:blend_error, s:none, s:none)
      call enfocado#highlighter('ALEInfoLine', s:none, s:blend_info, s:none, s:none)
      call enfocado#highlighter('ALEWarningLine', s:none, s:blend_warn, s:none, s:none)
    else
      call enfocado#highlighter('ALEErrorLine', s:none, s:br_red, s:fg_0, s:none)
      call enfocado#highlighter('ALEInfoLine', s:none, s:br_yellow, s:fg_0, s:none)
      call enfocado#highlighter('ALEWarningLine', s:none, s:br_orange, s:fg_0, s:none)
    endif
    highlight! link ALEError DiagnosticUnderlineError
    highlight! link ALEInfo DiagnosticUnderlineInfo
    highlight! link ALEWarning DiagnosticUnderlineWarn
    highlight! link ALEErrorSign DiagnosticSignError
    highlight! link ALEInfoSign DiagnosticSignInfo
    highlight! link ALEWarningSign DiagnosticSignWarn
    highlight! link ALEVirtualTextError DiagnosticVirtualTextError
    highlight! link ALEVirtualTextInfo DiagnosticVirtualTextInfo
    highlight! link ALEVirtualTextWarning DiagnosticVirtualTextWarn
    highlight! link ALEStyleError ALEError
    highlight! link ALEStyleWarning ALEWarning
    highlight! link ALEStyleErrorSign ALEErrorSign
    highlight! link ALEStyleWarningSign ALEWarningSign
    highlight! link ALEVirtualTextStyleError ALEVirtualTextError
    highlight! link ALEVirtualTextStyleWarning ALEVirtualTextWarning
    highlight! link ALESignColumnWithErrors ALEErrorSign
  endif
" }}}
" coc.nvim: {{{
  if enfocado#pluginIsActivated('coc', 0)
    " Coc markdown.
    highlight! link CocMarkdownHeader Title
    highlight! link CocMarkdownLink Link
    highlight! CocBold term=bold cterm=bold gui=bold
    highlight! CocItalic term=italic cterm=italic gui=italic
    highlight! CocStrikeThrough term=strikethrough cterm=strikethrough gui=strikethrough
    highlight! CocUnderline term=underline cterm=underline gui=underline

    " Coc diagnostics.
    if (has('termguicolors') && &termguicolors) || has('gui_running')
      call enfocado#highlighter('CocErrorLine', s:none, s:blend_error, s:none, s:none)
      call enfocado#highlighter('CocHintLine', s:none, s:blend_hint, s:none, s:none)
      call enfocado#highlighter('CocInfoLine', s:none, s:blend_info, s:none, s:none)
      call enfocado#highlighter('CocWarningLine', s:none, s:blend_warn, s:none, s:none)
    else
      call enfocado#highlighter('CocErrorLine', s:none, s:br_red, s:fg_0, s:none)
      call enfocado#highlighter('CocHintLine', s:none, s:br_blue, s:fg_0, s:none)
      call enfocado#highlighter('CocInfoLine', s:none, s:br_yellow, s:fg_0, s:none)
      call enfocado#highlighter('CocWarningLine', s:none, s:br_orange, s:fg_0, s:none)
    endif
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight! link CocErrorSign DiagnosticError
    highlight! link CocHintSign DiagnosticHint
    highlight! link CocInfoSign DiagnosticInfo
    highlight! link CocWarningSign DiagnosticWarn
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight! link CocHintVirtualText DiagnosticVirtualTextHint
    highlight! link CocInfoVirtualText DiagnosticVirtualTextInfo
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link CocDeprecatedHighlight Error
    highlight! link CocFadeOut Comment
    highlight! link CocUnusedHighlight Comment

    " Coc document highlight.
    highlight! link CocHighlightRead Visual
    highlight! link CocHighlightWrite Visual
    highlight! link CocHighlightText Visual

    " Coc float window/popup.
    highlight! link CocFloating NormalFloat
    highlight! link CocErrorFloat DiagnosticFloatingError
    highlight! link CocHintFloat DiagnosticFloatingHint
    highlight! link CocInfoFloat DiagnosticFloatingInfo
    highlight! link CocWarningFloat DiagnosticFloatingWarn

    " Coc list.
    highlight! link CocListMode StatusLine
    highlight! link CocListPath StatusLine
    highlight! link CocSelectedLine Visual
    highlight! link CocSelectedText Visual

    " Coc tree view.
    highlight! link CocTreeDescription Dimmed
    highlight! link CocTreeOpenClose Dimmed
    highlight! link CocTreeSelected Visual
    highlight! link CocTreeTitle Title

    " Coc symbol icons.
    highlight! link CocSymbolArray Identifier
    highlight! link CocSymbolBoolean Boolean
    highlight! link CocSymbolClass Type
    highlight! link CocSymbolConstant ConstIdentifier
    highlight! link CocSymbolConstructor Type
    highlight! link CocSymbolDefault Text
    highlight! link CocSymbolEnum Type
    highlight! link CocSymbolEnumMember Property
    highlight! link CocSymbolEvent FunctionBuiltin
    highlight! link CocSymbolField Property
    highlight! link CocSymbolFile Text
    highlight! link CocSymbolFunction Function
    highlight! link CocSymbolInterface Type
    highlight! link CocSymbolKey Identifier
    highlight! link CocSymbolMethod Method
    highlight! link CocSymbolModule Text
    highlight! link CocSymbolNamespace Text
    highlight! link CocSymbolNull StatementBuiltin
    highlight! link CocSymbolNumber Number
    highlight! link CocSymbolObject Type
    highlight! link CocSymbolOperator Operator
    highlight! link CocSymbolPackage String
    highlight! link CocSymbolProperty Property
    highlight! link CocSymbolString String
    highlight! link CocSymbolStruct Type
    highlight! link CocSymbolTypeParameter Type
    highlight! link CocSymbolVariable Identifier

    " Coc others.
    highlight! link CocCodeLens Dimmed
    highlight! link CocCursorRange Visual
    highlight! link CocHoverRange Visual
    highlight! link CocMenuSel Visual
    highlight! link CocSelectedRange Visual

    " Coc semantic highlight.
    if exists('g:coc_default_semantic_highlight_groups') &&
          \ g:coc_default_semantic_highlight_groups == 1
      highlight! link CocSem_class Type
      highlight! link CocSem_comment Comment
      highlight! link CocSem_enum Type
      highlight! link CocSem_enumMember Property
      highlight! link CocSem_event FunctionBuiltin
      highlight! link CocSem_function Function
      highlight! link CocSem_interface Type
      highlight! link CocSem_keyword Keyword
      highlight! link CocSem_macro Macro
      highlight! link CocSem_method Method
      highlight! link CocSem_modifier Type
      highlight! link CocSem_namespace Text
      highlight! link CocSem_number Number
      highlight! link CocSem_operator Operator
      highlight! link CocSem_parameter Identifier
      highlight! link CocSem_property Property
      highlight! link CocSem_regexp StatementBuiltin
      highlight! link CocSem_string String
      highlight! link CocSem_struct Type
      highlight! link CocSem_type Type
      highlight! link CocSem_typeParameter Type
      highlight! link CocSem_variable Identifier
    endif
  endif
" }}}
" copilot.vim: {{{
  if enfocado#pluginIsActivated('copilot', 1)
    highlight! link CopilotSuggestion Comment
  endif
" }}}
" ctrlp.vim: {{{
  if enfocado#pluginIsActivated('ctrlp', 0)
    " For the CtrlP buffer.
    highlight! link CtrlPNoEntries MoreMsg
    highlight! link CtrlPMatch Match
    highlight! link CtrlPLinePre NonText
    highlight! link CtrlPPrtBase Accent
    highlight! link CtrlPPrtText Text
    highlight! link CtrlPPrtCursor Cursor

    " Buffer explorer mode.
    highlight! link CtrlPBufferNr Text
    highlight! link CtrlPBufferInd Text
    highlight! link CtrlPBufferHid Dimmed
    highlight! link CtrlPBufferHidMod CtrlPBufferInd
    highlight! link CtrlPBufferVis Text
    highlight! link CtrlPBufferVisMod CtrPBufferVis
    highlight! link CtrlPBufferCur Accent
    highlight! link CtrlPBufferCurMod CtrPBufferCur
    highlight! link CtrlPBufferPath Dimmed

    " In extensions.
    highlight! link CtrlPTabExtra Dimmed
    highlight! link CtrlPBufName Text
    highlight! link CtrlPTagKind Text
    highlight! link CtrlPqfLineCol LineNr
    highlight! link CtrlPUndoT Text
    highlight! link CtrlPUndoBr NonText
    highlight! link CtrlPUndoNr Text
    highlight! link CtrlPUndoSv Text
    highlight! link CtrlPUndoPo Accent
    highlight! link CtrlPBookmark Text

    " Statuslines.
    highlight! link CtrlPMode1 Statusline
    highlight! link CtrlPMode2 Statusline
    highlight! link CtrlPStats Accent
  endif
" }}}
" dashboard-nvim: {{{
  if enfocado#pluginIsActivated('dashboard', 0)
    highlight! link DashboardHeader Accent
    highlight! link DashboardCenter Text
    highlight! link DashboardShortCut Text
    highlight! link DashboardFooter Dimmed
  endif
" }}}
" fern.vim: {{{
  if enfocado#pluginIsActivated('fern', 0)
    highlight! link FernSpinner DiagnosticInfo
    highlight! link FernMarkedLine Accent
    highlight! link FernMarkedText Accent
    highlight! link FernRootSymbol NonText
    highlight! link FernRootText Dimmed
    highlight! link FernLeafSymbol FernRootSymbol
    highlight! link FernLeafText Text
    highlight! link FernBranchSymbol FernRootSymbol
    highlight! link FernBranchText Directory
    highlight! link FernWindowSelectIndicator Accent
    highlight! link FernWindowSelectStatusLine StatusLine

    " fern-git-status.vim plugin.
    highlight! link FernGitStatusBracket NonText
    highlight! link FernGitStatusIndex Success
    highlight! link FernGitStatusWorktree Text
    highlight! link FernGitStatusUnmerged DiffChange
    highlight! link FernGitStatusUntracked Ignore
    highlight! link FernGitStatusIgnored Ignore
  endif
" }}}
" fzf.vim: {{{
  if enfocado#pluginIsActivated('fzf', 0)
    " fzf apply enfocado groups.
    if !exists('g:fzf_colors')
      let g:fzf_colors = {
            \ 'bg': ['bg', 'NormalFloat'],
            \ 'bg+': ['bg', 'PmenuSel'],
            \ 'border': ['fg', 'FloatBorder'],
            \ 'fg': ['fg', 'NormalFloat'],
            \ 'fg+': ['fg', 'NormalFloat'],
            \ 'header': ['fg', 'Title'],
            \ 'hl': ['fg', 'Match'],
            \ 'hl+': ['fg', 'Match'],
            \ 'info': ['fg', 'DiagnosticInfo'],
            \ 'marker': ['fg', 'Dimmed'],
            \ 'pointer': ['fg', 'Dimmed'],
            \ 'prompt': ['fg', 'Dimmed'],
            \ 'spinner': ['fg', 'DiagnosticInfo']
          \ }
    endif

    " Others FZF groups.
    call enfocado#highlighter('Fzf1', s:bold, s:bg_2, s:dim_0, s:none)
    call enfocado#highlighter('Fzf2', s:nocombine, s:bg_1, s:dim_0, s:none)
    call enfocado#highlighter('Fzf3', s:nocombine, s:bg_0, s:dim_0, s:none)
  endif
" }}}
" glyph-palette.vim: {{{
  if enfocado#pluginIsActivated('glyph-palette', 0)
    call enfocado#highlighter('GlyphPalette0', s:nocombine, s:none, s:bg_1, s:none)
    call enfocado#highlighter('GlyphPalette1', s:nocombine, s:none, s:red, s:none)
    call enfocado#highlighter('GlyphPalette2', s:nocombine, s:none, s:green, s:none)
    call enfocado#highlighter('GlyphPalette3', s:nocombine, s:none, s:yellow, s:none)
    call enfocado#highlighter('GlyphPalette4', s:nocombine, s:none, s:blue, s:none)
    call enfocado#highlighter('GlyphPalette5', s:nocombine, s:none, s:magenta, s:none)
    call enfocado#highlighter('GlyphPalette6', s:nocombine, s:none, s:cyan, s:none)
    call enfocado#highlighter('GlyphPalette7', s:nocombine, s:none, s:dim_0, s:none)
    call enfocado#highlighter('GlyphPalette8', s:nocombine, s:none, s:bg_2, s:none)
    call enfocado#highlighter('GlyphPalette9', s:nocombine, s:none, s:br_red, s:none)
    call enfocado#highlighter('GlyphPalette10', s:nocombine, s:none, s:br_green, s:none)
    call enfocado#highlighter('GlyphPalette11', s:nocombine, s:none, s:br_yellow, s:none)
    call enfocado#highlighter('GlyphPalette12', s:nocombine, s:none, s:br_blue, s:none)
    call enfocado#highlighter('GlyphPalette13', s:nocombine, s:none, s:br_magenta, s:none)
    call enfocado#highlighter('GlyphPalette14', s:nocombine, s:none, s:br_cyan, s:none)
    call enfocado#highlighter('GlyphPalette15', s:nocombine, s:none, s:fg_1, s:none)
    highlight! link GlyphPaletteDirectory Directory
  endif
" }}}
" indent-blankline: {{{
  if enfocado#pluginIsActivated('indent-blankline', 1)
    call enfocado#highlighter('IndentBlanklineChar', s:none, s:none, s:bg_2, s:none)
    call enfocado#highlighter('IndentBlanklineSpaceChar', s:none, s:none, s:bg_2, s:none)
    call enfocado#highlighter('IndentBlanklineSpaceCharBlankline', s:none, s:none, s:bg_2, s:none)
    call enfocado#highlighter('IndentBlanklineContextChar', s:none, s:none, s:dim_0, s:none)
    call enfocado#highlighter('IndentBlanklineContextStart', s:underline, s:none, s:none, s:dim_0)
  endif
" }}}
" nerdtree: {{{
  if enfocado#pluginIsActivated('nerdtree', 0)
    highlight! link NERDTreeBookmark NERDTreeFile
    highlight! link NERDTreeBookmarkHeader Title
    highlight! link NERDTreeClosable Dimmed
    highlight! link NERDTreeCWD Ignore
    highlight! link NERDTreeDir Directory
    highlight! link NERDTreeDirSlash Dimmed
    highlight! link NERDTreeExecFile FileExec
    highlight! link NERDTreeFile Text
    highlight! link NERDTreeHelp Text
    highlight! link NERDTreeHelpCommand Text
    highlight! link NERDTreeHelpKey Text
    highlight! link NERDTreeHelpTitle Title
    highlight! link NERDTreeLink FileLink
    highlight! link NERDTreeLinkDir NERDTreeLink
    highlight! link NERDTreeLinkFile NERDTreeLink
    highlight! link NERDTreeLinkTarget NERDTreeFile
    highlight! link NERDTreeOpenable Dimmed
    highlight! link NERDTreeRO NERDTreeFile
    highlight! link NERDTreeToggleOff Dimmed
    highlight! link NERDTreeToggleOn Text
    highlight! link NERDTreeUp Dimmed
  endif
" }}}
" netrw: {{{
  if enfocado#pluginIsActivated('netrw', 0)
    highlight! link netrwClassify Dimmed
    highlight! link netrwCmdSep Ignore
    highlight! link netrwComment Comment
    highlight! link netrwDir Directory
    highlight! link netrwExe FileExec
    highlight! link netrwHelpCmd Text
    highlight! link netrwLink FileLink
    highlight! link netrwList Dimmed
    highlight! link netrwPlain Text
    highlight! link netrwSymLink netrwLink
    highlight! link netrwVersion Ignore
  endif
" }}}
" nvim-cmp: {{{
  if enfocado#pluginIsActivated('cmp', 1)
    highlight! link CmpItemAbbr Text
    highlight! link CmpItemAbbrDeprecated Error
    highlight! link CmpItemAbbrMatch Match
    highlight! link CmpItemAbbrMatchFuzzy MatchFuzzy
    highlight! link CmpItemKindClass Type
    highlight! link CmpItemKindColor StatementBuiltin
    highlight! link CmpItemKindConstant ConstIdentifier
    highlight! link CmpItemKindConstructor Type
    highlight! link CmpItemKind Text
    highlight! link CmpItemKindEnum Type
    highlight! link CmpItemKindEnumMember Property
    highlight! link CmpItemKindEvent FunctionBuiltin
    highlight! link CmpItemKindField Property
    highlight! link CmpItemKindFile Text
    highlight! link CmpItemKindFolder Directory
    highlight! link CmpItemKindFunction Function
    highlight! link CmpItemKindInterface Type
    highlight! link CmpItemKindKeyword Keyword
    highlight! link CmpItemKindMethod Method
    highlight! link CmpItemKindModule Text
    highlight! link CmpItemKindOperator Operator
    highlight! link CmpItemKindProperty Property
    highlight! link CmpItemKindReference Accent
    highlight! link CmpItemKindSnippet Text
    highlight! link CmpItemKindStruct Type
    highlight! link CmpItemKindText Text
    highlight! link CmpItemKindTypeParameter Type
    highlight! link CmpItemKindUnit Number
    highlight! link CmpItemKindValue Text
    highlight! link CmpItemKindVariable Identifier
    highlight! link CmpItemMenu NormalFloat
  endif
" }}}
" nvim-lspconfig: {{{
  if enfocado#pluginIsActivated('lsp', 1)
    highlight! link LspCodeLens Dimmed
    highlight! link LspCodeLensSeparator NonText
    highlight! link LspReferenceRead Visual
    highlight! link LspReferenceText Visual
    highlight! link LspReferenceWrite Visual
    highlight! link LspSignatureActiveParameter Accent
  endif
" }}}
" nvim-notify: {{{
  if enfocado#pluginIsActivated('notify', 1)
    call enfocado#highlighter('NotifyERRORBorder', s:nocombine, s:none, s:br_red, s:none)
    call enfocado#highlighter('NotifyDEBUGBorder', s:nocombine, s:none, s:dim_0, s:none)
    call enfocado#highlighter('NotifyINFOBorder', s:nocombine, s:none, s:br_yellow, s:none)
    call enfocado#highlighter('NotifyTRACEBorder', s:nocombine, s:none, s:br_magenta, s:none)
    call enfocado#highlighter('NotifyWARNBorder', s:nocombine, s:none, s:br_orange, s:none)
    highlight! link NotifyERRORIcon NotifyERRORBorder
    highlight! link NotifyDEBUGIcon NotifyDEBUGBorder
    highlight! link NotifyINFOIcon NotifyINFOBorder
    highlight! link NotifyTRACEIcon NotifyTRACEBorder
    highlight! link NotifyWARNIcon NotifyWARNBorder
    highlight! link NotifyERRORTitle Title
    highlight! link NotifyDEBUGTitle Title
    highlight! link NotifyINFOTitle Title
    highlight! link NotifyTRACETitle Title
    highlight! link NotifyWARNTitle Title
    highlight! link NotifyERRORBody Text
    highlight! link NotifyDEBUGBody Text
    highlight! link NotifyINFOBody Text
    highlight! link NotifyTRACEBody Text
    highlight! link NotifyWARNBody Text
    highlight! link NotifyLogTime Debug
    highlight! link NotifyLogTitle Title
  endif
" }}}
" nvim-scrollview: {{{
  if enfocado#pluginIsActivated('scrollview', 1)
    highlight! link ScrollView Line
  endif
" }}}
" nvim-treesitter: {{{
  if enfocado#pluginIsActivated('treesitter', 1)
    call enfocado#highlighter('TSDanger', s:bold, s:br_red, s:bg_1, s:none)
    call enfocado#highlighter('TSNote', s:bold, s:br_yellow, s:bg_1, s:none)
    call enfocado#highlighter('TSWarning', s:bold, s:br_orange, s:bg_1, s:none)
    call enfocado#highlighter('TSLiteral', s:italic, s:none, s:fg_0, s:none)
    call enfocado#highlighter('TSNone', s:none, s:none, s:none, s:none)
    call enfocado#highlighter('TSTitle', s:nocombine, s:none, s:fg_1, s:none)
    highlight! link TSAnnotation SpecialComment
    highlight! link TSAttribute SpecialComment
    highlight! link TSBoolean Boolean
    highlight! link TSCharacter Character
    highlight! link TSComment Comment
    highlight! link TSConditional Conditional
    highlight! link TSConstant ConstIdentifier
    highlight! link TSConstBuiltin ConstIdentifier
    highlight! link TSConstMacro ConstIdentifier
    highlight! link TSConstructor Type
    highlight! link TSDebug Debug
    highlight! link TSDefine PreProc
    highlight! link TSDefinition PreProc
    highlight! link TSEnvironment Text
    highlight! link TSEnvironmentName StatementBuiltin
    highlight! link TSError Error
    highlight! link TSException Exception
    highlight! link TSField Property
    highlight! link TSFloat Float
    highlight! link TSFunction Function
    highlight! link TSFuncBuiltin FunctionBuiltin
    highlight! link TSFuncMacro Function
    highlight! link TSInclude Include
    highlight! link TSKeyword Keyword
    highlight! link TSKeywordFunction Type
    highlight! link TSKeywordOperator Operator
    highlight! link TSKeywordReturn Keyword
    highlight! link TSLabel Label
    highlight! link TSMath StatementBuiltin
    highlight! link TSMethod Method
    highlight! link TSNamespace Text
    highlight! link TSNumber Number
    highlight! link TSOperator Operator
    highlight! link TSParameter Identifier
    highlight! link TSParameterReference Indentifier
    highlight! link TSPreProc PreProc
    highlight! link TSProperty Property
    highlight! link TSPunctDelimiter Delimiter
    highlight! link TSPunctBracket Delimiter
    highlight! link TSPunctSpecial StatementBuiltin
    highlight! link TSRepeat Repeat
    highlight! link TSStorageClass StorageClass
    highlight! link TSString String
    highlight! link TSStringRegex StatementBuiltin
    highlight! link TSStringEscape StatementBuiltin
    highlight! link TSStringSpecial StatementBuiltin
    highlight! link TSSymbol Identifier
    highlight! link TSTag Tag
    highlight! link TSTagAttribute Identifier
    highlight! link TSTagDelimiter Delimiter
    highlight! link TSText Text
    highlight! link TSTextReference TSLiteral
    highlight! link TSTodo Todo
    highlight! link TSType Type
    highlight! link TSTypeBuiltin TypeBuiltin
    highlight! link TSTypeQualifier Type
    highlight! link TSURI Link
    highlight! link TSVariable Identifier
    highlight! link TSVariableBuiltin IdentifierBuiltin
    highlight! TSEmphasis term=italic cterm=italic gui=italic
    highlight! TSStrike term=strikethrough cterm=strikethrough gui=strikethrough
    highlight! TSStrong term=bold cterm=bold gui=bold
    highlight! TSUnderline term=underline cterm=underline gui=underline

    " TSModule info.
    highlight! link TSModuleInfoGood Success
    highlight! link TSModuleInfoBad DiagnosticError
    highlight! link TSModuleInfoHeader Accent
    highlight! link TSModuleInfoNamespace Title
    highlight! link TSModuleInfoParser Text

    " nvim-ts-rainbow module.
    if g:enfocado_style == 'neon'
      call enfocado#highlighter('rainbowcol1', s:none, s:none, s:violet, s:none)
      call enfocado#highlighter('rainbowcol2', s:none, s:none, s:cyan, s:none)
      call enfocado#highlighter('rainbowcol3', s:none, s:none, s:magenta, s:none)
      call enfocado#highlighter('rainbowcol4', s:none, s:none, s:br_violet, s:none)
      call enfocado#highlighter('rainbowcol5', s:none, s:none, s:br_cyan, s:none)
      call enfocado#highlighter('rainbowcol6', s:none, s:none, s:br_magenta, s:none)
      call enfocado#highlighter('rainbowcol7', s:none, s:none, s:violet, s:none)
    else
      call enfocado#highlighter('rainbowcol1', s:none, s:none, s:blue, s:none)
      call enfocado#highlighter('rainbowcol2', s:none, s:none, s:cyan, s:none)
      call enfocado#highlighter('rainbowcol3', s:none, s:none, s:green, s:none)
      call enfocado#highlighter('rainbowcol4', s:none, s:none, s:br_blue, s:none)
      call enfocado#highlighter('rainbowcol5', s:none, s:none, s:br_cyan, s:none)
      call enfocado#highlighter('rainbowcol6', s:none, s:none, s:br_green, s:none)
      call enfocado#highlighter('rainbowcol7', s:none, s:none, s:blue, s:none)
    endif
  endif
" }}}
" nvim-tree.lua: {{{
  if enfocado#pluginIsActivated('tree', 1)
    call enfocado#highlighter('NvimTreeImageFile', s:bold, s:none, s:magenta, s:none)
    highlight! link NvimTreeCursorColumn Line
    highlight! link NvimTreeCursorLine Line
    highlight! link NvimTreeEmptyFolderName Directory
    highlight! link NvimTreeEndOfBuffer EndOfBuffer
    highlight! link NvimTreeExecFile FileExec
    highlight! link NvimTreeFileDeleted DiffDelete
    highlight! link NvimTreeFileDirty DiffDelete
    highlight! link NvimTreeFileMerge DiffChange
    highlight! link NvimTreeFileNew DiffAdd
    highlight! link NvimTreeFileRenamed DiffAdd
    highlight! link NvimTreeFileStaged DiffChange
    highlight! link NvimTreeFolderIcon Dimmed
    highlight! link NvimTreeFolderName Dimmed
    highlight! link NvimTreeGitDeleted DiffDelete
    highlight! link NvimTreeGitDirty DiffDelete
    highlight! link NvimTreeGitIgnored Text
    highlight! link NvimTreeGitMerge DiffChange
    highlight! link NvimTreeGitNew DiffAdd
    highlight! link NvimTreeGitRenamed DiffAdd
    highlight! link NvimTreeGitStaged DiffChange
    highlight! link NvimTreeIndentMarker NonText
    highlight! link NvimTreeLspDiagnosticsError DiagnosticError
    highlight! link NvimTreeLspDiagnosticsHint DiagnosticHint
    highlight! link NvimTreeLspDiagnosticsInformation DiagnosticInfo
    highlight! link NvimTreeLspDiagnosticsWarning DiagnosticWarn
    highlight! link NvimTreeNormal Normal
    highlight! link NvimTreeNormalNC NormalNC
    highlight! link NvimTreeOpenedFile Accent
    highlight! link NvimTreeOpenedFolderName Directory
    highlight! link NvimTreePopup NormalFloat
    highlight! link NvimTreeRootFolder Ignore
    highlight! link NvimTreeSignColumn SignColumn
    highlight! link NvimTreeSpecialFile SpecialComment
    highlight! link NvimTreeStatusLine StatusLine
    highlight! link NvimTreeStatusLineNC StatusLineNC
    highlight! link NvimTreeSymlink FileLink
    highlight! link NvimTreeVertSplit VertSplit
    highlight! link NvimTreeWindowPicker Accent
  endif
" }}}
" packer.nvim: {{{
  if enfocado#pluginIsActivated('packer', 1)
    highlight! link packerWorking Accent
    highlight! link packerSuccess Success
    highlight! link packerFail DiagnosticError
    highlight! link packerStatus DiagnosticInfo
    highlight! link packerStatusSuccess Success
    highlight! link packerStatusFail DiagnosticError
    highlight! link packerStatusCommit Dimmed
    highlight! link packerHash Dimmed
    highlight! link packerRelDate Dimmed
    highlight! link packerProgress DiagnosticInfo
    highlight! link packerOutput Debug
    highlight! link packerTimeHigh Dimmed
    highlight! link packerTimeMedium Dimmed
    highlight! link packerTimeLow Dimmed
    highlight! link packerTimeTrivial Dimmed
    highlight! link packerPackageNotLoaded Dimmed
    highlight! link packerPackageName Text
    highlight! link packerString String
    highlight! link packerBool Boolean
    highlight! link packerBreakingChange DiagnosticWarn
  endif
" }}}
" rainbow: {{{
  if enfocado#pluginIsActivated('rainbow', 0)
    if g:enfocado_style == 'neon'
      let s:rainbow_guifgs = [s:violet[0], s:cyan[0], s:magenta[0], s:br_violet[0]]
      let s:rainbow_ctermfgs = [s:violet[1], s:cyan[1], s:magenta[1], s:br_violet[1]]
    else
      let s:rainbow_guifgs = [s:blue[0], s:cyan[0], s:green[0], s:br_blue[0]]
      let s:rainbow_ctermfgs = [s:blue[1], s:cyan[1], s:green[1], s:br_blue[1]]
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
  endif
" }}}
" telescope.nvim: {{{
  if enfocado#pluginIsActivated('telescope', 1)
    call enfocado#highlighter('TelescopePreviewDate', s:nocombine, s:none, s:blue, s:none)
    call enfocado#highlighter('TelescopePreviewRead', s:bold, s:none, s:yellow, s:none)
    call enfocado#highlighter('TelescopePreviewSize', s:bold, s:none, s:green, s:none)
    call enfocado#highlighter('TelescopePreviewUser', s:bold, s:none, s:br_yellow, s:none)
    call enfocado#highlighter('TelescopePreviewWrite', s:bold, s:none, s:red, s:none)
    highlight! link TelescopeBorder FloatBorder
    highlight! link TelescopeMatching Match
    highlight! link TelescopeMultiSelection Visual
    highlight! link TelescopeNormal NormalFloat
    highlight! link TelescopePreviewBorder FloatBorder
    highlight! link TelescopePreviewDirectory Directory
    highlight! link TelescopePreviewExecute FileExec
    highlight! link TelescopePreviewLink FileLink
    highlight! link TelescopePreviewMatch Search
    highlight! link TelescopePreviewMessage DiagnosticInfo
    highlight! link TelescopePreviewMessageFillchar DiagnosticInfo
    highlight! link TelescopePreviewNormal NormalFloat
    highlight! link TelescopePreviewTitle Title
    highlight! link TelescopePromptBorder FloatBorder
    highlight! link TelescopePromptCounter DiagnosticInfo
    highlight! link TelescopePromptNormal NormalFloat
    highlight! link TelescopePromptPrefix Text
    highlight! link TelescopePromptTitle Title
    highlight! link TelescopeResultsBorder FloatBorder
    highlight! link TelescopeResultsDiffAdd DiffAdd
    highlight! link TelescopeResultsDiffChange DiffChange
    highlight! link TelescopeResultsDiffDelete DiffDelete
    highlight! link TelescopeResultsDiffUntracked Ignore
    highlight! link TelescopeResultsClass Type
    highlight! link TelescopeResultsComment Comment
    highlight! link TelescopeResultsConstant ConstIdentifier
    highlight! link TelescopeResultsField Property
    highlight! link TelescopeResultsFunction Function
    highlight! link TelescopeResultsIdentifier Identifier
    highlight! link TelescopeResultsLineNr Ignore
    highlight! link TelescopeResultsMethod Method
    highlight! link TelescopeResultsNormal NormalFloat
    highlight! link TelescopeResultsNumber Number
    highlight! link TelescopeResultsOperator Operator
    highlight! link TelescopeResultsSpecialComment SpecialComment
    highlight! link TelescopeResultsStruct Type
    highlight! link TelescopeResultsTitle Title
    highlight! link TelescopeResultsVariable Identifier
    highlight! link TelescopeSelection Visual
    highlight! link TelescopeSelectionCaret Visual
    highlight! link TelescopeTitle Title
  endif
" }}}
" todo-comments.nvim: {{{
  if enfocado#pluginIsActivated('todo-comments', 1)
    call enfocado#highlighter('TodoBgFIX', s:bold, s:br_red, s:bg_1, s:none)
    call enfocado#highlighter('TodoBgHACK', s:bold, s:br_yellow, s:bg_1, s:none)
    call enfocado#highlighter('TodoBgNOTE', s:bold, s:br_green, s:bg_1, s:none)
    call enfocado#highlighter('TodoBgPERF', s:bold, s:br_magenta, s:bg_1, s:none)
    call enfocado#highlighter('TodoBgTODO', s:bold, s:br_cyan, s:bg_1, s:none)
    call enfocado#highlighter('TodoBgWARN', s:bold, s:br_orange, s:bg_1, s:none)
    call enfocado#highlighter('TodoFgFIX', s:nocombine, s:none, s:br_red, s:none)
    call enfocado#highlighter('TodoFgHACK', s:nocombine, s:none, s:br_yellow, s:none)
    call enfocado#highlighter('TodoFgNOTE', s:nocombine, s:none, s:br_green, s:none)
    call enfocado#highlighter('TodoFgPERF', s:nocombine, s:none, s:br_magenta, s:none)
    call enfocado#highlighter('TodoFgTODO', s:nocombine, s:none, s:br_cyan, s:none)
    call enfocado#highlighter('TodoFgWARN', s:nocombine, s:none, s:br_orange, s:none)
    call enfocado#highlighter('TodoSignFIX', s:nocombine, s:none, s:br_red, s:none)
    call enfocado#highlighter('TodoSignHACK', s:nocombine, s:none, s:br_yellow, s:none)
    call enfocado#highlighter('TodoSignNOTE', s:nocombine, s:none, s:br_green, s:none)
    call enfocado#highlighter('TodoSignPERF', s:nocombine, s:none, s:br_magenta, s:none)
    call enfocado#highlighter('TodoSignTODO', s:nocombine, s:none, s:br_cyan, s:none)
    call enfocado#highlighter('TodoSignWARN', s:nocombine, s:none, s:br_orange, s:none)
  endif
" }}}
" vim-better-whitespace: {{{
if enfocado#pluginIsActivated('whitespace', 0)
  call enfocado#highlighter('ExtraWhitespace', s:nocombine, s:br_red, s:bg_1, s:none)
endif
" }}}
" vim-floaterm: {{{
  if enfocado#pluginIsActivated('floaterm', 0)
    highlight! link Floaterm NormalFloat
    highlight! link FloatermBorder FloatBorder
    highlight! link FloatermNC NormalFloat
  endif
" }}}
" vim-gitgutter: {{{
  if enfocado#pluginIsActivated('gitgutter', 0)
    if (has('termguicolors') && &termguicolors) || has('gui_running')
      call enfocado#highlighter('GitGutterAddLine', s:none, s:blend_added, s:none, s:none)
      call enfocado#highlighter('GitGutterChangeLine', s:none, s:blend_modified, s:none, s:none)
      call enfocado#highlighter('GitGutterDeleteLine', s:none, s:blend_removed, s:none, s:none)
      call enfocado#highlighter('GitGutterChangeDeleteLine', s:none, s:blend_removed, s:none, s:none)
    else
      call enfocado#highlighter('GitGutterAddLine', s:none, s:green, s:fg_0, s:none)
      call enfocado#highlighter('GitGutterChangeLine', s:none, s:yellow, s:fg_0, s:none)
      call enfocado#highlighter('GitGutterDeleteLine', s:none, s:red, s:fg_0, s:none)
      call enfocado#highlighter('GitGutterChangeDeleteLine', s:none, s:red, s:fg_0, s:none)
    endif
    highlight! link GitGutterAdd DiffAdd
    highlight! link GitGutterAddInvisible None
    highlight! link GitGutterAddLineNr GitGutterAdd
    highlight! link GitGutterChange DiffChange
    highlight! link GitGutterChangeInvisible None
    highlight! link GitGutterChangeLineNr GitGutterChange
    highlight! link GitGutterDelete DiffDelete
    highlight! link GitGutterDeleteInvisible None
    highlight! link GitGutterDeleteLineNr GitGutterDelete
    highlight! link GitGutterChangeDelete GitGutterChange
    highlight! link GitGutterChangeDeleteInvisible GitGutterChangeInvisible
    highlight! link GitGutterChangeDeleteLineNr GitGutterChangeDelete
  endif
" }}}
" vim-matchup: {{{
  if enfocado#pluginIsActivated('matchup', 0)
    highlight! link MatchBackground Visual
    highlight! link MatchParenCur Visual
    highlight! link MatchWord Visual
    highlight! link MatchWordCur Visual
  endif
" }}}
" vim-plug: {{{
  if enfocado#pluginIsActivated('plug', 0)
    highlight! link plug1 Title
    highlight! link plug2 Accent
    highlight! link plugBracket Text
    highlight! link plugCommit Text
    highlight! link plugDash Dimmed
    highlight! link plugDeleted Ignore
    highlight! link plugEdge Dimmed
    highlight! link plugError DiagnosticError
    highlight! link plugH2 Title
    highlight! link plugInstall Accent
    highlight! link plugMessage DiagnosticInfo
    highlight! link plugName Text
    highlight! link plugNotLoaded Dimmed
    highlight! link plugNumber Number
    highlight! link plugPlus Text
    highlight! link plugRelDate Dimmed
    highlight! link plugSha Dimmed
    highlight! link plugStar Dimmed
    highlight! link plugTag Text
    highlight! link plugUpdate Accent
    highlight! link plugX Text
  endif
" }}}
" vim-signify: {{{
  if enfocado#pluginIsActivated('signify', 0)
    if exists('g:signify_line_highlight') && g:signify_line_highlight == 1
      if (has('termguicolors') && &termguicolors) || has('gui_running')
        call enfocado#highlighter('SignifyLineAdd', s:none, s:blend_added, s:none, s:none)
        call enfocado#highlighter('SignifyLineChange', s:none, s:blend_modified, s:none, s:none)
        call enfocado#highlighter('SignifyLineChangeDelete', s:none, s:blend_modified, s:none, s:none)
        call enfocado#highlighter('SignifyLineDelete', s:none, s:blend_removed, s:none, s:none)
        call enfocado#highlighter('SignifyLineDeleteFirstLine', s:none, s:blend_removed, s:none, s:none)
      else
        call enfocado#highlighter('SignifyLineAdd', s:none, s:green, s:fg_0, s:none)
        call enfocado#highlighter('SignifyLineChange', s:none, s:yellow, s:fg_0, s:none)
        call enfocado#highlighter('SignifyLineChangeDelete', s:none, s:yellow, s:fg_0, s:none)
        call enfocado#highlighter('SignifyLineDelete', s:none, s:red, s:fg_0, s:none)
        call enfocado#highlighter('SignifyLineDeleteFirstLine', s:none, s:red, s:fg_0, s:none)
      endif
    endif
    highlight! link SignifySignAdd DiffAdd
    highlight! link SignifySignChange DiffChange
    highlight! link SignifySignChangeDelete SignifySignChange
    highlight! link SignifySignDelete DiffDelete
    highlight! link SignifySignDeleteFirstLine SignifySignDelete
  endif
" }}}
" vim-startify: {{{
  if enfocado#pluginIsActivated('startify', 0)
    call enfocado#highlighter('StartifySelect', s:none, s:bg_2, s:fg_1, s:none)
    highlight! link StartifyBracket Ignore
    highlight! link StartifyFile Accent
    highlight! link StartifyFooter Dimmed
    highlight! link StartifyHeader Accent
    highlight! link StartifyNumber Dimmed
    highlight! link StartifyPath Text
    highlight! link StartifySection Title
    highlight! link StartifySlash StartifyPath
    highlight! link StartifySpecial StartifyPath
    highlight! link StartifyVar StartifyPath
  endif
" }}}
" vim-visual-multi: {{{
  if enfocado#pluginIsActivated('visual-multi', 0)
    if !exists('g:VM_theme_set_by_colorscheme') ||
          \ g:VM_theme_set_by_colorscheme != 0
      let g:VM_theme_set_by_colorscheme = 1
      if g:enfocado_style == 'neon'
        call enfocado#highlighter('VM_Extend', s:bold, s:bg_2, s:magenta, s:none)
      else
        call enfocado#highlighter('VM_Extend', s:bold, s:bg_2, s:green, s:none)
      endif
      call enfocado#highlighter('VM_Insert', s:none, s:bg_1, s:yellow, s:none)
      highlight! link VM_Cursor Cursor
      highlight! link VM_Mono VM_Cursor
    endif
  endif
" }}}
" vista.vim: {{{
  if enfocado#pluginIsActivated('vista', 0)
    highlight! link VistaBracket Ignore
    highlight! link VistaChildrenNr Ignore
    highlight! link VistaColon Ignore
    highlight! link VistaFloat NormalFloat
    highlight! link VistaIcon Ignore
    highlight! link VistaLineNr Ignore
    highlight! link VistaPrefix Ignore
    highlight! link VistaScope Dimmed
    highlight! link VistaTag Dimmed
  endif
" }}}
" which-key.nvim: {{{
  if enfocado#pluginIsActivated('which-key', 0)
    highlight! link WhichKey MoreMsg
    highlight! link WhichKeyDesc Accent
    highlight! link WhichKeyFloat NormalFloat
    highlight! link WhichKeyGroup Dimmed
    highlight! link WhichKeySeparator NonText
    highlight! link WhichKeyValue Text
  endif
" }}}
