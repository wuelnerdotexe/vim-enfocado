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

" Necessary variables are initialized.
let s:termguicolors = has('termguicolors') ? 1 : 0
let s:gui_running = has('gui_running') ? 1 : 0

" The script ends if the theme is not supported.
if !(s:termguicolors && &termguicolors) && &t_Co != 256 &&
      \ !s:gui_running && !has('syntax')
  finish
endif

" The Enfocado theme is initialized.
let g:colors_name = 'enfocado'

" Get plugins activated.
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
let s:blend_ok = s:colorScheme.blend_ok
let s:blend_added = s:colorScheme.blend_added
let s:blend_removed = s:colorScheme.blend_removed
let s:blend_modified = s:colorScheme.blend_modified

let s:accent_0 = s:colorScheme.accent_0
let s:accent_1 = s:colorScheme.accent_1
let s:br_accent_0 = s:colorScheme.br_accent_0
let s:br_accent_1 = s:colorScheme.br_accent_1

let s:builtin_0 = s:colorScheme.builtin_0
let s:builtin_1 = s:colorScheme.builtin_1
let s:br_builtin_0 = s:colorScheme.br_builtin_0
let s:br_builtin_1 = s:colorScheme.br_builtin_1

" Attributes are declared.
let s:none = ['NONE', 'NONE']
let s:nocombine = ['nocombine,NONE', 'nocombine,NONE']
let s:bold = ['nocombine,bold', 'nocombine,bold']
let s:italic = ['nocombine,italic', 'nocombine,italic']
let s:underline = ['underline', 'underline']
let s:undercurl = ['undercurl', 'undercurl']
let s:bold_underline = ['bold,underline', 'bold,underline']
let s:reverse = ['reverse', 'reverse']
let s:strikethrough = ['strikethrough,NONE', 'strikethrough,NONE']

" All highlights are removed.
if !exists('syntax_on') || !exists('syntax_manual')
  syntax on
else
  syntax reset
endif

" Vim terminal variables are assigned.
let g:terminal_ansi_colors = [
      \   s:bg_1[0],
      \   s:red[0],
      \   s:green[0],
      \   s:yellow[0],
      \   s:blue[0],
      \   s:magenta[0],
      \   s:cyan[0],
      \   s:dim_0[0],
      \   s:bg_2[0],
      \   s:br_red[0],
      \   s:br_green[0],
      \   s:br_yellow[0],
      \   s:br_blue[0],
      \   s:br_magenta[0],
      \   s:br_cyan[0],
      \   s:fg_1[0]
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
" General interfaz.
if (s:termguicolors && &termguicolors) || s:gui_running
  call enfocado#highlighter('IncSearch', s:none, s:blend_search, s:none, s:none)
  call enfocado#highlighter('Search', s:none, s:blend_search, s:none, s:none)
else
  call enfocado#highlighter('IncSearch', s:none, s:br_yellow, s:bg_1, s:none)
  call enfocado#highlighter('Search', s:none, s:br_yellow, s:bg_1, s:none)
endif
if &relativenumber && &number
  call enfocado#highlighter('LineNr', s:none, s:bg_1, s:fg_0, s:none)
else
  call enfocado#highlighter('LineNr', s:none, s:none, s:bg_2, s:none)
endif
call enfocado#highlighter('Accent', s:none, s:none, s:br_accent_0, s:none)
call enfocado#highlighter('AccentSecondary', s:none, s:none, s:br_accent_1, s:none)
call enfocado#highlighter('Builtin', s:none, s:none, s:br_builtin_0, s:none)
call enfocado#highlighter('ColorColumn', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('Conceal', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('Cursor', s:none, s:fg_0, s:bg_1, s:none)
call enfocado#highlighter('CursorColumn', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('CursorLine', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('CursorLineNr', s:none, s:bg_1, s:dim_0, s:none)
call enfocado#highlighter('CursorLineSign', s:none, s:none, s:none, s:none)
call enfocado#highlighter('DiffAdd', s:none, s:none, s:green, s:none)
call enfocado#highlighter('DiffChange', s:none, s:none, s:yellow, s:none)
call enfocado#highlighter('DiffDelete', s:none, s:none, s:red, s:none)
call enfocado#highlighter('DiffText', s:none, s:bg_2, s:yellow, s:none)
call enfocado#highlighter('Dimmed', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('Directory', s:bold, s:none, s:br_blue, s:none)
call enfocado#highlighter('ErrorMsg', s:nocombine, s:none, s:br_red, s:none)
call enfocado#highlighter('FileLink', s:bold, s:none, s:br_cyan, s:none)
call enfocado#highlighter('FileExec', s:bold, s:none, s:green, s:none)
call enfocado#highlighter('FloatBorder', s:nocombine, s:bg_1, s:br_accent_0, s:none)
call enfocado#highlighter('Folded', s:nocombine, s:none, s:dim_0, s:none)
call enfocado#highlighter('FoldColumn', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('Ignore', s:nocombine, s:none, s:bg_2, s:none)
call enfocado#highlighter('lCursor', s:none, s:fg_0, s:bg_1, s:none)
call enfocado#highlighter('LineNrAbove', s:none, s:none, s:bg_2, s:none)
call enfocado#highlighter('Match', s:bold, s:none, s:br_accent_0, s:none)
call enfocado#highlighter('MatchFuzzy', s:nocombine, s:none, s:accent_0, s:none)
call enfocado#highlighter('MatchParen', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('ModeMsg', s:nocombine, s:none, s:fg_0, s:none)
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
call enfocado#highlighter('QuickFixLine', s:none, s:bg_1, s:br_accent_0, s:none)
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
call enfocado#highlighter('ToolbarButton', s:nocombine, s:accent_0, s:bg_1, s:none)
call enfocado#highlighter('ToolbarLine', s:nocombine, s:bg_1, s:dim_0, s:none)
call enfocado#highlighter('VertSplit', s:nocombine, s:none, s:base, s:none)
call enfocado#highlighter('Visual', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('VisualNC', s:none, s:bg_1, s:none, s:none)
call enfocado#highlighter('VisualNOS', s:none, s:bg_2, s:none, s:none)
call enfocado#highlighter('WarningMsg', s:nocombine, s:none, s:br_orange, s:none)
call enfocado#highlighter('WildMenu', s:bold, s:bg_2, s:br_accent_0, s:none)
highlight! link CursorLineFold CursorLine
highlight! link EndOfBuffer NonText
highlight! link Line ColorColumn
highlight! link LineNrBelow LineNrAbove
highlight! link MsgArea Text
highlight! link MsgSeparator StatusLineNC
highlight! link FloatTitle NormalFloat
highlight! link NormalNC Normal
highlight! link Substitute Search
highlight! link TermCursorNC None
highlight! link Whitespace NonText
highlight! link WinBar Text
highlight! link WinBarNC Dimmed
highlight! link WinSeparator VertSplit
if has('nvim')
  highlight! FloatShadow term=NONE cterm=NONE ctermbg=16 ctermfg=16 guibg=#000000 gui=NONE guifg=#000000 blend=50
  highlight! FloatShadowThrough term=NONE cterm=NONE ctermbg=16 ctermfg=16 guibg=#000000 gui=NONE guifg=#000000 blend=100
endif

" General syntax.
call enfocado#highlighter('Comment', s:italic, s:none, s:dim_0, s:none)
call enfocado#highlighter('ConstIdentifier', s:none, s:none, s:yellow, s:none)
call enfocado#highlighter('Error', s:none, s:none, s:br_red, s:none)
call enfocado#highlighter('Trace', s:nocombine, s:none, s:br_magenta, s:none)
call enfocado#highlighter('Exception', s:nocombine, s:none, s:orange, s:none)
call enfocado#highlighter('Function', s:italic, s:none, s:br_accent_0, s:none)
call enfocado#highlighter('FunctionBuiltin', s:italic, s:none, s:br_builtin_0, s:none)
call enfocado#highlighter('Identifier', s:nocombine, s:none, s:accent_0, s:none)
call enfocado#highlighter('IdentifierBuiltin', s:nocombine, s:none, s:builtin_0, s:none)
call enfocado#highlighter('Link', s:underline, s:none, s:br_cyan, s:br_cyan)
call enfocado#highlighter('PreProc', s:nocombine, s:none, s:accent_1, s:none)
call enfocado#highlighter('Special', s:nocombine, s:none, s:br_builtin_1, s:none)
call enfocado#highlighter('Statement', s:nocombine, s:none, s:accent_1, s:none)
call enfocado#highlighter('StatementBuiltin', s:nocombine, s:none, s:builtin_1, s:none)
call enfocado#highlighter('String', s:nocombine, s:none, s:cyan, s:br_cyan)
call enfocado#highlighter('Text', s:nocombine, s:none, s:fg_0, s:none)
call enfocado#highlighter('Todo', s:bold, s:br_cyan, s:bg_1, s:none)
call enfocado#highlighter('Type', s:bold, s:none, s:br_accent_1, s:none)
call enfocado#highlighter('TypeBuiltin', s:bold, s:none, s:br_builtin_1, s:none)
highlight! link Boolean StatementBuiltin
highlight! link Character String
highlight! link Conditional Statement
highlight! link Constant Text
highlight! link Debug Dimmed
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
highlight! Bold term=bold cterm=bold gui=bold
highlight! Italic term=italic cterm=italic gui=italic
highlight! Underlined term=underline cterm=underline gui=underline

" nvim-lsp: {{{
highlight! link LspCodeLens Dimmed
highlight! link LspCodeLensSeparator NonText
highlight! link LspReferenceRead Visual
highlight! link LspReferenceText Visual
highlight! link LspReferenceWrite Visual
highlight! link LspSignatureActiveParameter Accent

" Diagnostics.
call enfocado#highlighter('DiagnosticError', s:bold, s:none, s:br_red, s:none)
call enfocado#highlighter('DiagnosticHint', s:bold, s:none, s:br_blue, s:none)
call enfocado#highlighter('DiagnosticInfo', s:bold, s:none, s:br_yellow, s:none)
call enfocado#highlighter('DiagnosticWarn', s:bold, s:none, s:br_orange, s:none)
call enfocado#highlighter('DiagnosticOk', s:bold, s:none, s:br_green, s:none)
call enfocado#highlighter('DiagnosticFloatingError', s:bold, s:bg_1, s:br_red, s:none)
call enfocado#highlighter('DiagnosticFloatingHint', s:bold, s:bg_1, s:br_blue, s:none)
call enfocado#highlighter('DiagnosticFloatingInfo', s:bold, s:bg_1, s:br_yellow, s:none)
call enfocado#highlighter('DiagnosticFloatingWarn', s:bold, s:bg_1, s:br_orange, s:none)
call enfocado#highlighter('DiagnosticFloatingOk', s:bold, s:bg_1, s:br_green, s:none)
call enfocado#highlighter('DiagnosticUnderlineError', s:undercurl, s:none, s:none, s:br_red)
call enfocado#highlighter('DiagnosticUnderlineHint', s:undercurl, s:none, s:none, s:br_blue)
call enfocado#highlighter('DiagnosticUnderlineInfo', s:undercurl, s:none, s:none, s:br_yellow)
call enfocado#highlighter('DiagnosticUnderlineWarn', s:undercurl, s:none, s:none, s:br_orange)
call enfocado#highlighter('DiagnosticUnderlineOk', s:undercurl, s:none, s:none, s:br_green)
if (s:termguicolors && &termguicolors) || s:gui_running
  call enfocado#highlighter('DiagnosticVirtualTextError', s:bold, s:blend_error, s:br_red, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextHint', s:bold, s:blend_hint, s:br_blue, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextInfo', s:bold, s:blend_info, s:br_yellow, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextWarn', s:bold, s:blend_warn, s:br_orange, s:none)
  call enfocado#highlighter('DiagnosticVirtualTextOk', s:bold, s:blend_ok, s:br_green, s:none)
else
  highlight! link DiagnosticVirtualTextError DiagnosticFloatingError
  highlight! link DiagnosticVirtualTextHint DiagnosticFloatingHint
  highlight! link DiagnosticVirtualTextInfo DiagnosticFloatingInfo
  highlight! link DiagnosticVirtualTextWarn DiagnosticFloatingWarn
  highlight! link DiagnosticVirtualTextOk DiagnosticFloatingOk
endif
highlight! link DiagnosticSignError DiagnosticError
highlight! link DiagnosticSignHint DiagnosticHint
highlight! link DiagnosticSignInfo DiagnosticInfo
highlight! link DiagnosticSignWarn DiagnosticWarn
highlight! link DiagnosticSignOk DiagnosticOk

" Other diagnostics.
call enfocado#highlighter('DiagnosticDeprecated', s:strikethrough, s:none, s:none, s:br_red)
highlight! link DiagnosticUnnecessary Ignore

" Standard semantic token types.
highlight! link @lsp.type.class Type
highlight! link @lsp.type.comment Comment
highlight! link @lsp.type.decorator StatementBuiltin
highlight! link @lsp.type.enum Type
highlight! link @lsp.type.enumMember Property
highlight! link @lsp.type.event FunctionBuiltin
highlight! link @lsp.type.function Function
highlight! link @lsp.type.interface Type
highlight! link @lsp.type.keyword Keyword
highlight! link @lsp.type.label Label
highlight! link @lsp.type.macro Macro
highlight! link @lsp.type.method Method
highlight! link @lsp.type.namespace Text
highlight! link @lsp.type.number Number
highlight! link @lsp.type.operator Operator
highlight! link @lsp.type.parameter Identifier
highlight! link @lsp.type.property Property
highlight! link @lsp.type.regexp StatementBuiltin
highlight! link @lsp.type.string String
highlight! link @lsp.type.struct Type
highlight! link @lsp.type.typeParameter Type
highlight! link @lsp.type.type Type
highlight! link @lsp.type.variable Identifier

" Async modifier.
highlight! link @lsp.mod.async None
highlight! link @lsp.typemod.class.async @lsp.type.class
highlight! link @lsp.typemod.comment.async @lsp.type.comment
highlight! link @lsp.typemod.decorator.async @lsp.type.decorator
highlight! link @lsp.typemod.enum.async @lsp.type.enum
highlight! link @lsp.typemod.enumMember.async @lsp.type.enumMember
highlight! link @lsp.typemod.event.async @lsp.type.event
highlight! link @lsp.typemod.function.async @lsp.type.function
highlight! link @lsp.typemod.interface.async @lsp.type.interface
highlight! link @lsp.typemod.keyword.async @lsp.type.keyword
highlight! link @lsp.typemod.label.async @lsp.type.label
highlight! link @lsp.typemod.macro.async @lsp.type.macro
highlight! link @lsp.typemod.method.async @lsp.type.method
highlight! link @lsp.typemod.namespace.async @lsp.type.namespace
highlight! link @lsp.typemod.number.async @lsp.type.number
highlight! link @lsp.typemod.operator.async @lsp.type.operator
highlight! link @lsp.typemod.parameter.async @lsp.type.parameter
highlight! link @lsp.typemod.property.async @lsp.type.property
highlight! link @lsp.typemod.regexp.async @lsp.type.regexp
highlight! link @lsp.typemod.string.async @lsp.type.string
highlight! link @lsp.typemod.struct.async @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.async @lsp.type.typeParameter
highlight! link @lsp.typemod.type.async @lsp.type.type
highlight! link @lsp.typemod.variable.async @lsp.type.variable

" Declaration modifier.
highlight! link @lsp.mod.declaration None
highlight! link @lsp.typemod.class.declaration @lsp.type.class
highlight! link @lsp.typemod.comment.declaration @lsp.type.comment
highlight! link @lsp.typemod.decorator.declaration @lsp.type.decorator
highlight! link @lsp.typemod.enum.declaration @lsp.type.enum
highlight! link @lsp.typemod.enumMember.declaration @lsp.type.enumMember
highlight! link @lsp.typemod.event.declaration @lsp.type.event
highlight! link @lsp.typemod.function.declaration @lsp.type.function
highlight! link @lsp.typemod.interface.declaration @lsp.type.interface
highlight! link @lsp.typemod.keyword.declaration @lsp.type.keyword
highlight! link @lsp.typemod.label.declaration @lsp.type.label
highlight! link @lsp.typemod.macro.declaration @lsp.type.macro
highlight! link @lsp.typemod.method.declaration @lsp.type.method
highlight! link @lsp.typemod.namespace.declaration @lsp.type.namespace
highlight! link @lsp.typemod.number.declaration @lsp.type.number
highlight! link @lsp.typemod.operator.declaration @lsp.type.operator
highlight! link @lsp.typemod.parameter.declaration @lsp.type.parameter
highlight! link @lsp.typemod.property.declaration @lsp.type.property
highlight! link @lsp.typemod.regexp.declaration @lsp.type.regexp
highlight! link @lsp.typemod.string.declaration @lsp.type.string
highlight! link @lsp.typemod.struct.declaration @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.declaration @lsp.type.typeParameter
highlight! link @lsp.typemod.type.declaration @lsp.type.type
highlight! link @lsp.typemod.variable.declaration @lsp.type.variable

" Definition modifier.
highlight! link @lsp.mod.definition None
highlight! link @lsp.typemod.class.definition @lsp.type.class
highlight! link @lsp.typemod.comment.definition @lsp.type.comment
highlight! link @lsp.typemod.decorator.definition @lsp.type.decorator
highlight! link @lsp.typemod.enum.definition @lsp.type.enum
highlight! link @lsp.typemod.enumMember.definition @lsp.type.enumMember
highlight! link @lsp.typemod.event.definition @lsp.type.event
highlight! link @lsp.typemod.function.definition @lsp.type.function
highlight! link @lsp.typemod.interface.definition @lsp.type.interface
highlight! link @lsp.typemod.keyword.definition @lsp.type.keyword
highlight! link @lsp.typemod.label.definition @lsp.type.label
highlight! link @lsp.typemod.macro.definition @lsp.type.macro
highlight! link @lsp.typemod.method.definition @lsp.type.method
highlight! link @lsp.typemod.namespace.definition @lsp.type.namespace
highlight! link @lsp.typemod.number.definition @lsp.type.number
highlight! link @lsp.typemod.operator.definition @lsp.type.operator
highlight! link @lsp.typemod.parameter.definition @lsp.type.parameter
highlight! link @lsp.typemod.property.definition @lsp.type.property
highlight! link @lsp.typemod.regexp.definition @lsp.type.regexp
highlight! link @lsp.typemod.string.definition @lsp.type.string
highlight! link @lsp.typemod.struct.definition @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.definition @lsp.type.typeParameter
highlight! link @lsp.typemod.type.definition @lsp.type.type
highlight! link @lsp.typemod.variable.definition @lsp.type.variable

" Documentation modifier.
highlight! link @lsp.mod.documentation None
highlight! link @lsp.typemod.class.documentation @lsp.type.class
highlight! link @lsp.typemod.comment.documentation @lsp.type.comment
highlight! link @lsp.typemod.decorator.documentation @lsp.type.decorator
highlight! link @lsp.typemod.enum.documentation @lsp.type.enum
highlight! link @lsp.typemod.enumMember.documentation @lsp.type.enumMember
highlight! link @lsp.typemod.event.documentation @lsp.type.event
highlight! link @lsp.typemod.function.documentation @lsp.type.function
highlight! link @lsp.typemod.interface.documentation @lsp.type.interface
highlight! link @lsp.typemod.keyword.documentation @lsp.type.keyword
highlight! link @lsp.typemod.label.documentation @lsp.type.label
highlight! link @lsp.typemod.macro.documentation @lsp.type.macro
highlight! link @lsp.typemod.method.documentation @lsp.type.method
highlight! link @lsp.typemod.namespace.documentation @lsp.type.namespace
highlight! link @lsp.typemod.number.documentation @lsp.type.number
highlight! link @lsp.typemod.operator.documentation @lsp.type.operator
highlight! link @lsp.typemod.parameter.documentation @lsp.type.parameter
highlight! link @lsp.typemod.property.documentation @lsp.type.property
highlight! link @lsp.typemod.regexp.documentation @lsp.type.regexp
highlight! link @lsp.typemod.string.documentation @lsp.type.string
highlight! link @lsp.typemod.struct.documentation @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.documentation @lsp.type.typeParameter
highlight! link @lsp.typemod.type.documentation @lsp.type.type
highlight! link @lsp.typemod.variable.documentation @lsp.type.variable

" Local modifier.
highlight! link @lsp.mod.local None
highlight! link @lsp.typemod.class.local @lsp.type.class
highlight! link @lsp.typemod.comment.local @lsp.type.comment
highlight! link @lsp.typemod.decorator.local @lsp.type.decorator
highlight! link @lsp.typemod.enum.local @lsp.type.enum
highlight! link @lsp.typemod.enumMember.local @lsp.type.enumMember
highlight! link @lsp.typemod.event.local @lsp.type.event
highlight! link @lsp.typemod.function.local @lsp.type.function
highlight! link @lsp.typemod.interface.local @lsp.type.interface
highlight! link @lsp.typemod.keyword.local @lsp.type.keyword
highlight! link @lsp.typemod.label.local @lsp.type.label
highlight! link @lsp.typemod.macro.local @lsp.type.macro
highlight! link @lsp.typemod.method.local @lsp.type.method
highlight! link @lsp.typemod.namespace.local @lsp.type.namespace
highlight! link @lsp.typemod.number.local @lsp.type.number
highlight! link @lsp.typemod.operator.local @lsp.type.operator
highlight! link @lsp.typemod.parameter.local @lsp.type.parameter
highlight! link @lsp.typemod.property.local @lsp.type.property
highlight! link @lsp.typemod.regexp.local @lsp.type.regexp
highlight! link @lsp.typemod.string.local @lsp.type.string
highlight! link @lsp.typemod.struct.local @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.local @lsp.type.typeParameter
highlight! link @lsp.typemod.type.local @lsp.type.type
highlight! link @lsp.typemod.variable.local @lsp.type.variable

" Modification modifier.
highlight! link @lsp.mod.modification None
highlight! link @lsp.typemod.class.modification @lsp.type.class
highlight! link @lsp.typemod.comment.modification @lsp.type.comment
highlight! link @lsp.typemod.decorator.modification @lsp.type.decorator
highlight! link @lsp.typemod.enum.modification @lsp.type.enum
highlight! link @lsp.typemod.enumMember.modification @lsp.type.enumMember
highlight! link @lsp.typemod.event.modification @lsp.type.event
highlight! link @lsp.typemod.function.modification @lsp.type.function
highlight! link @lsp.typemod.interface.modification @lsp.type.interface
highlight! link @lsp.typemod.keyword.modification @lsp.type.keyword
highlight! link @lsp.typemod.label.modification @lsp.type.label
highlight! link @lsp.typemod.macro.modification @lsp.type.macro
highlight! link @lsp.typemod.method.modification @lsp.type.method
highlight! link @lsp.typemod.namespace.modification @lsp.type.namespace
highlight! link @lsp.typemod.number.modification @lsp.type.number
highlight! link @lsp.typemod.operator.modification @lsp.type.operator
highlight! link @lsp.typemod.parameter.modification @lsp.type.parameter
highlight! link @lsp.typemod.property.modification @lsp.type.property
highlight! link @lsp.typemod.regexp.modification @lsp.type.regexp
highlight! link @lsp.typemod.string.modification @lsp.type.string
highlight! link @lsp.typemod.struct.modification @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.modification @lsp.type.typeParameter
highlight! link @lsp.typemod.type.modification @lsp.type.type
highlight! link @lsp.typemod.variable.modification @lsp.type.variable

" Static modifier.
highlight! link @lsp.mod.static None
highlight! link @lsp.typemod.class.static @lsp.type.class
highlight! link @lsp.typemod.comment.static @lsp.type.comment
highlight! link @lsp.typemod.decorator.static @lsp.type.decorator
highlight! link @lsp.typemod.enum.static @lsp.type.enum
highlight! link @lsp.typemod.enumMember.static @lsp.type.enumMember
highlight! link @lsp.typemod.event.static @lsp.type.event
highlight! link @lsp.typemod.function.static @lsp.type.function
highlight! link @lsp.typemod.interface.static @lsp.type.interface
highlight! link @lsp.typemod.keyword.static @lsp.type.keyword
highlight! link @lsp.typemod.label.static @lsp.type.label
highlight! link @lsp.typemod.macro.static @lsp.type.macro
highlight! link @lsp.typemod.method.static @lsp.type.method
highlight! link @lsp.typemod.namespace.static @lsp.type.namespace
highlight! link @lsp.typemod.number.static @lsp.type.number
highlight! link @lsp.typemod.operator.static @lsp.type.operator
highlight! link @lsp.typemod.parameter.static @lsp.type.parameter
highlight! link @lsp.typemod.property.static @lsp.type.property
highlight! link @lsp.typemod.regexp.static @lsp.type.regexp
highlight! link @lsp.typemod.string.static @lsp.type.string
highlight! link @lsp.typemod.struct.static @lsp.type.struct
highlight! link @lsp.typemod.typeParameter.static @lsp.type.typeParameter
highlight! link @lsp.typemod.type.static @lsp.type.type
highlight! link @lsp.typemod.variable.static @lsp.type.variable

" DefaultLibrary modifier.
highlight! link @lsp.mod.defaultLibrary None
highlight! link @lsp.typemod.class.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.comment.defaultLibrary Comment
highlight! link @lsp.typemod.decorator.defaultLibrary Statement
highlight! link @lsp.typemod.enum.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.enumMember.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.event.defaultLibrary Function
highlight! link @lsp.typemod.function.defaultLibrary FunctionBuiltin
highlight! link @lsp.typemod.interface.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.keyword.defaultLibrary StatementBuiltin
highlight! link @lsp.typemod.label.defaultLibrary StatementBuiltin
highlight! link @lsp.typemod.macro.defaultLibrary StatementBuiltin
highlight! link @lsp.typemod.method.defaultLibrary FunctionBuiltin
highlight! link @lsp.typemod.namespace.defaultLibrary Text
highlight! link @lsp.typemod.number.defaultLibrary Number
highlight! link @lsp.typemod.operator.defaultLibrary StatementBuiltin
highlight! link @lsp.typemod.parameter.defaultLibrary IndentifierBuiltin
highlight! link @lsp.typemod.property.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.regexp.defaultLibrary Statement
highlight! link @lsp.typemod.string.defaultLibrary String
highlight! link @lsp.typemod.struct.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.typeParameter.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.type.defaultLibrary TypeBuiltin
highlight! link @lsp.typemod.variable.defaultLibrary IndentifierBuiltin

" Abstract modifier.
call enfocado#highlighter('@lsp.mod.abstract', s:nocombine, s:none, s:yellow, s:none)
highlight! link @lsp.mod.async.abstract @lsp.mod.abstract
highlight! link @lsp.mod.declaration.abstract @lsp.mod.abstract
highlight! link @lsp.mod.definition.abstract @lsp.mod.abstract
highlight! link @lsp.mod.documentation.abstract @lsp.mod.abstract
highlight! link @lsp.mod.local.abstract @lsp.mod.abstract
highlight! link @lsp.mod.modification.abstract @lsp.mod.abstract
highlight! link @lsp.mod.static.abstract @lsp.mod.abstract
highlight! link @lsp.mod.defaultLibrary.abstract @lsp.mod.abstract

" Readonly modifier.
call enfocado#highlighter('@lsp.mod.readonly', s:nocombine, s:none, s:yellow, s:none)
highlight! link @lsp.mod.async.readonly @lsp.mod.readonly
highlight! link @lsp.mod.declaration.readonly @lsp.mod.readonly
highlight! link @lsp.mod.definition.readonly @lsp.mod.readonly
highlight! link @lsp.mod.documentation.readonly @lsp.mod.readonly
highlight! link @lsp.mod.local.readonly @lsp.mod.readonly
highlight! link @lsp.mod.modification.readonly @lsp.mod.readonly
highlight! link @lsp.mod.static.readonly @lsp.mod.readonly
highlight! link @lsp.mod.defaultLibrary.readonly @lsp.mod.readonly

" Deprecated modifier.
call enfocado#highlighter('@lsp.mod.deprecated', s:nocombine, s:none, s:br_red, s:none)
highlight! link @lsp.mod.async.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.declaration.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.definition.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.documentation.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.local.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.modification.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.static.deprecated @lsp.mod.deprecated
highlight! link @lsp.mod.defaultLibrary.deprecated @lsp.mod.deprecated
" }}}
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
" aerial.nvim: {{{
if enfocado#pluginIsActivated('aerial', 1)
  " Cursorlines.
  highlight! link AerialLine Search
  highlight! link AerialLineNC Search

  " Symbols.
  highlight! link AerialArrayIcon Identifier
  highlight! link AerialBooleanIcon StatementBuiltin
  highlight! link AerialClassIcon Type
  highlight! link AerialConstantIcon ConstIdentifier
  highlight! link AerialConstructorIcon Type
  highlight! link AerialEnumIcon Type
  highlight! link AerialEnumMemberIcon Property
  highlight! link AerialEventIcon Builtin
  highlight! link AerialFieldIcon Property
  highlight! link AerialFileIcon Text
  highlight! link AerialFunctionIcon Accent
  highlight! link AerialInterfaceIcon Type
  highlight! link AerialKeyIcon Identifier
  highlight! link AerialMethodIcon Accent
  highlight! link AerialModuleIcon Text
  highlight! link AerialNamespaceIcon Text
  highlight! link AerialNullIcon StatementBuiltin
  highlight! link AerialNumberIcon Number
  highlight! link AerialObjectIcon Type
  highlight! link AerialOperatorIcon Operator
  highlight! link AerialPackageIcon String
  highlight! link AerialPropertyIcon Property
  highlight! link AerialStringIcon String
  highlight! link AerialStructIcon Type
  highlight! link AerialTypeParameterIcon Type
  highlight! link AerialVariableIcon Identifier

  " Text symbols.
  highlight! link AerialPrivate Text
  highlight! link AerialProtected Text
  highlight! link AerialArray Text
  highlight! link AerialBoolean Text
  highlight! link AerialClass Text
  highlight! link AerialConstant Text
  highlight! link AerialConstructor Text
  highlight! link AerialEnum Text
  highlight! link AerialEnumMember Text
  highlight! link AerialEvent Text
  highlight! link AerialField Text
  highlight! link AerialFile Text
  highlight! link AerialFunction Text
  highlight! link AerialInterface Text
  highlight! link AerialKey Text
  highlight! link AerialMethod Text
  highlight! link AerialModule Text
  highlight! link AerialNamespace Text
  highlight! link AerialNull Text
  highlight! link AerialNumber Text
  highlight! link AerialObject Text
  highlight! link AerialOperator Text
  highlight! link AerialPackage Text
  highlight! link AerialProperty Text
  highlight! link AerialString Text
  highlight! link AerialStruct Text
  highlight! link AerialTypeParameter Text
  highlight! link AerialVariable Text

  " Indent lines.
  highlight! link AerialGuide NonText
  highlight! link AerialGuide1 AerialGuide
  highlight! link AerialGuide2 AerialGuide
  highlight! link AerialGuide3 AerialGuide
  highlight! link AerialGuide4 AerialGuide
  highlight! link AerialGuide5 AerialGuide
  highlight! link AerialGuide6 AerialGuide
  highlight! link AerialGuide7 AerialGuide
  highlight! link AerialGuide8 AerialGuide
  highlight! link AerialGuide9 AerialGuide
endif
" }}}
" ale: {{{
if enfocado#pluginIsActivated('ale', 0)
  if (s:termguicolors && &termguicolors) || s:gui_running
    call enfocado#highlighter('ALEErrorLine', s:none, s:blend_error, s:none, s:none)
    call enfocado#highlighter('ALEInfoLine', s:none, s:blend_info, s:none, s:none)
    call enfocado#highlighter('ALEWarningLine', s:none, s:blend_warn, s:none, s:none)
  else
    call enfocado#highlighter('ALEErrorLine', s:none, s:br_red, s:bg_1, s:none)
    call enfocado#highlighter('ALEInfoLine', s:none, s:br_yellow, s:bg_1, s:none)
    call enfocado#highlighter('ALEWarningLine', s:none, s:br_orange, s:bg_1, s:none)
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
" bufferline: {{{
if enfocado#pluginIsActivated('bufferline', 1)
  " Buffers.
  call enfocado#highlighter('BufferLineFill', s:nocombine, s:base, s:bg_2, s:none)
  highlight! link BufferLineBackground BufferLineFill
  highlight! link BufferLineBuffer BufferLineBackground
  highlight! link BufferLineNumbers BufferLineBuffer
  highlight! link BufferLineCloseButton BufferLineBuffer
  highlight! link BufferLineModified BufferLineCloseButton
  highlight! link BufferLineDiagnostic BufferLineBuffer

  " Selecteds.
  call enfocado#highlighter('BufferLineBufferSelected', s:nocombine, s:none, s:br_accent_0, s:none)
  highlight! link BufferLineNumbersSelected BufferLineBufferSelected
  highlight! link BufferLineCloseButtonSelected BufferLineBufferSelected
  highlight! link BufferLineModifiedSelected BufferLineCloseButtonSelected
  highlight! link BufferLineDiagnosticSelected BufferLineBufferSelected
  highlight! link BufferLineIndicatorSelected BufferLineBufferSelected

  " Visibles.
  call enfocado#highlighter('BufferLineBufferVisible', s:nocombine, s:none, s:dim_0, s:none)
  highlight! link BufferLineNumbersVisible BufferLineBufferVisible
  highlight! link BufferLineCloseButtonVisible BufferLineBufferVisible
  highlight! link BufferLineModifiedVisible BufferLineCloseButtonVisible
  highlight! link BufferLineDiagnosticVisible BufferLineBufferVisible
  highlight! link BufferLineIndicatorVisible BufferLineBufferVisible

  " Errors.
  call enfocado#highlighter('BufferLineErrorDiagnosticSelected', s:bold, s:bg_0, s:br_red, s:none)
  highlight! link BufferLineErrorSelected BufferLineBufferSelected
  highlight! link BufferLineErrorDiagnostic BufferLineBuffer
  highlight! link BufferLineError BufferLineBuffer
  highlight! link BufferLineErrorDiagnosticVisible BufferLineBufferVisible
  highlight! link BufferLineErrorVisible BufferLineBufferVisible

  " Warnings.
  call enfocado#highlighter('BufferLineWarningDiagnosticSelected', s:bold, s:bg_0, s:br_orange, s:none)
  highlight! link BufferLineWarningSelected BufferLineBufferSelected
  highlight! link BufferLineWarningDiagnostic BufferLineBuffer
  highlight! link BufferLineWarning BufferLineBuffer
  highlight! link BufferLineWarningDiagnosticVisible BufferLineBufferVisible
  highlight! link BufferLineWarningVisible BufferLineBufferVisible

  " Infos.
  call enfocado#highlighter('BufferLineInfoDiagnosticSelected', s:bold, s:bg_0, s:br_yellow, s:none)
  highlight! link BufferLineInfoSelected BufferLineBufferSelected
  highlight! link BufferLineInfoDiagnostic BufferLineBuffer
  highlight! link BufferLineInfo BufferLineBuffer
  highlight! link BufferLineInfoDiagnosticVisible BufferLineBufferVisible
  highlight! link BufferLineInfoVisible BufferLineBufferVisible

  " Hints.
  call enfocado#highlighter('BufferLineHintDiagnosticSelected', s:bold, s:bg_0, s:br_yellow, s:none)
  highlight! link BufferLineHintSelected BufferLineBufferSelected
  highlight! link BufferLineHintDiagnostic BufferLineBuffer
  highlight! link BufferLineHint BufferLineBuffer
  highlight! link BufferLineHintDiagnosticVisible BufferLineBufferVisible
  highlight! link BufferLineHintVisible BufferLineBufferVisible

  " Duplicateds.
  call enfocado#highlighter('BufferLineDuplicate', s:nocombine, s:base, s:bg_1, s:none)
  call enfocado#highlighter('BufferLineDuplicateSelected', s:nocombine, s:none, s:accent_0, s:none)
  call enfocado#highlighter('BufferLineDuplicateVisible', s:nocombine, s:none, s:bg_2, s:none)

  " Groups.
  call enfocado#highlighter('BufferLineGroupLabel', s:nocombine, s:none, s:bg_2, s:none)
  highlight! link BufferLineGroupSeparator BufferLineGroupLabel

  " Picks.
  call enfocado#highlighter('BufferLinePick', s:bold, s:base, s:br_yellow, s:none)
  call enfocado#highlighter('BufferLinePickSelected', s:bold, s:bg_0, s:br_yellow, s:none)
  highlight! link BufferLinePickVisible BufferLinePickSelected

  " Separators.
  call enfocado#highlighter('BufferLineSeparator', s:nocombine, s:base, s:base, s:none)
  call enfocado#highlighter('BufferLineSeparatorSelected', s:nocombine, s:bg_0, s:base, s:none)
  highlight! link BufferLineSeparatorVisible BufferLineSeparatorSelected
  highlight! link BufferLineOffsetSeparator BufferLineIndicatorSelected

  " Tabs.
  call enfocado#highlighter('BufferLineTabSeparatorSelected', s:nocombine, s:bg_0, s:bg_0, s:none)
  call enfocado#highlighter('BufferLineTabSelected', s:nocombine, s:none, s:accent_1, s:none)
  highlight! link BufferLineTab BufferLineBuffer
  highlight! link BufferLineTabClose BufferLineTabSelected
  highlight! link BufferLineTabSeparator BufferLineSeparator
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
  if (s:termguicolors && &termguicolors) || s:gui_running
    call enfocado#highlighter('CocErrorLine', s:none, s:blend_error, s:none, s:none)
    call enfocado#highlighter('CocHintLine', s:none, s:blend_hint, s:none, s:none)
    call enfocado#highlighter('CocInfoLine', s:none, s:blend_info, s:none, s:none)
    call enfocado#highlighter('CocWarningLine', s:none, s:blend_warn, s:none, s:none)
  else
    call enfocado#highlighter('CocErrorLine', s:none, s:br_red, s:bg_1, s:none)
    call enfocado#highlighter('CocHintLine', s:none, s:br_blue, s:bg_1, s:none)
    call enfocado#highlighter('CocInfoLine', s:none, s:br_yellow, s:bg_1, s:none)
    call enfocado#highlighter('CocWarningLine', s:none, s:br_orange, s:bg_1, s:none)
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
  highlight! link CocUnusedHighlight Ignore

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
  highlight! link CocSymbolEvent Builtin
  highlight! link CocSymbolField Property
  highlight! link CocSymbolFile Text
  highlight! link CocSymbolFunction Accent
  highlight! link CocSymbolInterface Type
  highlight! link CocSymbolKey Identifier
  highlight! link CocSymbolMethod Accent
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
  highlight! link FernRootSymbol FernRootText
  highlight! link FernRootText FernBranchText
  highlight! link FernLeafSymbol FernLeafText
  highlight! link FernLeafText Text
  highlight! link FernBranchSymbol FernBranchText
  highlight! link FernBranchText Directory
  highlight! link FernWindowSelectIndicator Accent
  highlight! link FernWindowSelectStatusLine StatusLine

  " fern-git-status.vim plugin.
  highlight! link FernGitStatusBracket NonText
  highlight! link FernGitStatusIndex Accent
  highlight! link FernGitStatusWorktree Text
  highlight! link FernGitStatusUnmerged DiffChange
  highlight! link FernGitStatusUntracked Ignore
  highlight! link FernGitStatusIgnored Ignore
endif
" }}}
" fold-preview.nvim: {{{
if enfocado#pluginIsActivated('fold-preview', 1)
  highlight! link FoldPreview NormalFloat
  highlight! link FoldPreviewBorder FloatBorder
endif
" }}}
" fzf.vim: {{{
if enfocado#pluginIsActivated('fzf', 0)
  " fzf apply enfocado groups.
  if !exists('g:fzf_colors')
    let g:fzf_colors = {
          \   'bg': ['bg', 'NormalFloat'],
          \   'bg+': ['bg', 'PmenuSel'],
          \   'border': ['fg', 'FloatBorder'],
          \   'fg': ['fg', 'NormalFloat'],
          \   'fg+': ['fg', 'NormalFloat'],
          \   'header': ['fg', 'Title'],
          \   'hl': ['fg', 'Match'],
          \   'hl+': ['fg', 'Match'],
          \   'info': ['fg', 'DiagnosticInfo'],
          \   'marker': ['fg', 'Dimmed'],
          \   'pointer': ['fg', 'Dimmed'],
          \   'prompt': ['fg', 'Dimmed'],
          \   'spinner': ['fg', 'DiagnosticInfo']
          \ }
  endif

  " Others FZF groups.
  call enfocado#highlighter('Fzf1', s:bold, s:bg_2, s:dim_0, s:none)
  call enfocado#highlighter('Fzf2', s:nocombine, s:bg_1, s:dim_0, s:none)
  call enfocado#highlighter('Fzf3', s:nocombine, s:bg_0, s:dim_0, s:none)
endif
" }}}
" gitsigns.nvim: {{{
if enfocado#pluginIsActivated('gitsigns', 1)
  if (s:termguicolors && &termguicolors) || s:gui_running
    call enfocado#highlighter('GitSignsAddVirtLn', s:none, s:blend_added, s:none, s:none)
    call enfocado#highlighter('GitSignsChangeVirtLn', s:none, s:blend_modified, s:none, s:none)
    call enfocado#highlighter('GitSignsDeleteVirtLn', s:none, s:blend_removed, s:none, s:none)
  else
    call enfocado#highlighter('GitSignsAddVirtLn', s:none, s:green, s:bg_1, s:none)
    call enfocado#highlighter('GitSignsChangeVirtLn', s:none, s:yellow, s:bg_1, s:none)
    call enfocado#highlighter('GitSignsDeleteVirtLn', s:none, s:red, s:bg_1, s:none)
  endif
  call enfocado#highlighter('GitSignsAddInline', s:none, s:green, s:bg_1, s:none)
  call enfocado#highlighter('GitSignsChangeInline', s:none, s:red, s:bg_1, s:none)
  call enfocado#highlighter('GitSignsDeleteInline', s:none, s:yellow, s:bg_1, s:none)
  call enfocado#highlighter('GitSignsUntrackedLn', s:none, s:bg_1, s:bg_2, s:none)
  highlight! link GitSignsAdd DiffAdd
  highlight! link GitSignsChange DiffChange
  highlight! link GitSignsDelete DiffDelete
  highlight! link GitSignsChangedelete GitSignsChange
  highlight! link GitSignsTopdelete GitSignsDelete
  highlight! link GitSignsUntracked Ignore
  highlight! link GitSignsAddNr GitSignsAdd
  highlight! link GitSignsChangeNr GitSignsChange
  highlight! link GitSignsDeleteNr GitSignsDelete
  highlight! link GitSignsChangedeleteNr GitSignsChangedelete
  highlight! link GitSignsTopdeleteNr GitSignsTopdelete
  highlight! link GitSignsUntrackedNr GitSignsUntracked
  highlight! link GitSignsAddLn GitSignsAddVirtLn
  highlight! link GitSignsChangeLn GitSignsChangeVirtLn
  highlight! link GitSignsAddPreview GitSignsAdd
  highlight! link GitSignsDeletePreview GitSignsDelete
  highlight! link GitSignsCurrentLineBlame Dimmed
  highlight! link GitSignsAddLnInline GitSignsAddInline
  highlight! link GitSignsChangeLnInline GitSignsChangeInline
  highlight! link GitSignsDeleteLnInline GitSignsDeleteInline
  highlight! link GitSignsAddLnVirtLnInLine GitSignsAddLnInline
  highlight! link GitSignsChangeVirtLnInLine GitSignsChangeLnInline
  highlight! link GitSignsDeleteVirtLnInLine GitSignsDeleteLnInline
  highlight! link GitSignsChangedeleteLn GitSignsChangeLn
  highlight! link GitSignsVirtLnum LineNr
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
  call enfocado#highlighter('IndentBlanklineCOntextSpaceChar', s:none, s:none, s:bg_2, s:none)
  call enfocado#highlighter('IndentBlanklineContextSpaceCharBlankline', s:none, s:none, s:bg_2, s:none)
  call enfocado#highlighter('IndentBlanklineContextStart', s:underline, s:none, s:none, s:dim_0)

  " Enfocado groups.
  call enfocado#highlighter('EnfocadoIndentBlanklineIndent1', s:none, s:none, s:accent_1, s:none)
  call enfocado#highlighter('EnfocadoIndentBlanklineIndent2', s:none, s:none, s:cyan, s:none)
  call enfocado#highlighter('EnfocadoIndentBlanklineIndent3', s:none, s:none, s:accent_0, s:none)
  call enfocado#highlighter('EnfocadoIndentBlanklineIndent4', s:none, s:none, s:br_accent_1, s:none)
  call enfocado#highlighter('EnfocadoIndentBlanklineIndent5', s:none, s:none, s:br_cyan, s:none)
  call enfocado#highlighter('EnfocadoIndentBlanklineIndent6', s:none, s:none, s:br_accent_0, s:none)
endif
" }}}
" nerdtree: {{{
if enfocado#pluginIsActivated('nerdtree', 0)
  highlight! link NERDTreeBookmark NERDTreeFile
  highlight! link NERDTreeBookmarkHeader Title
  highlight! link NERDTreeClosable Dimmed
  highlight! link NERDTreeCWD Ignore
  highlight! link NERDTreeDir Directory
  highlight! link NERDTreeDirSlash NERDTreeFile
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
" noice.nvim: {{{
if enfocado#pluginIsActivated('noice', 1)
  call enfocado#highlighter('NoiceConfirmBorder', s:nocombine, s:bg_1, s:br_yellow, s:none)
  call enfocado#highlighter('NoiceFormatConfirm', s:nocombine, s:bg_2, s:yellow, s:none)
  call enfocado#highlighter('NoiceFormatConfirmDefault', s:nocombine, s:br_yellow, s:bg_1, s:none)
  highlight! link NoiceCmdlineIconCmdline NoiceCmdlineIcon
  highlight! link NoiceCmdlineIconFilter NoiceCmdlineIcon
  highlight! link NoiceCmdlineIconHelp NoiceCmdlineIcon
  highlight! link NoiceCmdlineIconInput NoiceCmdlineIcon
  highlight! link NoiceCmdlineIconLua NoiceCmdlineIcon
  highlight! link NoiceCmdlineIconSearch NoiceCmdlineIcon
  highlight! link NoiceCmdlineIcon Text
  highlight! link NoiceCmdline MsgArea
  highlight! link NoiceCmdlinePopupBorderCmdline NoiceCmdlinePopupBorder
  highlight! link NoiceCmdlinePopupBorderFilter NoiceCmdlinePopupBorder
  highlight! link NoiceCmdlinePopupBorderHelp NoiceCmdlinePopupBorder
  highlight! link NoiceCmdlinePopupBorderInput NoiceCmdlinePopupBorder
  highlight! link NoiceCmdlinePopupBorderLua NoiceCmdlinePopupBorder
  highlight! link NoiceCmdlinePopupBorder NoicePopupBorder
  highlight! link NoiceCmdlinePopupBorderSearch NoiceCmdlinePopupBorder
  highlight! link NoiceCmdlinePopup NoicePopup
  highlight! link NoiceCmdlinePrompt Question
  highlight! link NoiceConfirm NoicePopup
  highlight! link NoiceCursor Cursor
  highlight! link NoiceFormatDate Text
  highlight! link NoiceFormatEvent Text
  highlight! link NoiceFormatKind NonText
  highlight! link NoiceFormatLevelDebug Debug
  highlight! link NoiceFormatLevelError DiagnosticError
  highlight! link NoiceFormatLevelInfo DiagnosticInfo
  highlight! link NoiceFormatLevelOff Dimmed
  highlight! link NoiceFormatLevelTrace Trace
  highlight! link NoiceFormatLevelWarn DiagnosticWarn
  highlight! link NoiceFormatProgressDone DiagnosticOk
  highlight! link NoiceFormatProgressTodo Accent
  highlight! link NoiceFormatTitle Title
  highlight! link NoiceLspProgressClient Accent
  highlight! link NoiceLspProgressSpinner DiagnosticInfo
  highlight! link NoiceLspProgressTitle NoiceFormatTitle
  highlight! link NoiceMini MsgArea
  highlight! link NoicePopupBorder FloatBorder
  highlight! link NoicePopupmenuBorder NoicePopupBorder
  highlight! link NoicePopupmenuMatch Accent
  highlight! link NoicePopupmenu Pmenu
  highlight! link NoicePopupmenuSelected PmenuSel
  highlight! link NoicePopup NormalFloat
  highlight! link NoiceScrollbar PmenuSbar
  highlight! link NoiceScrollbarThumb PmenuThumb
  highlight! link NoiceSplitBorder VertSplit
  highlight! link NoiceSplit Normal
  highlight! link NoiceVirtualText DiagnosticVirtualTextInfo

  " Completion item kinds.
  highlight! link NoiceCompletionItemKindClass Type
  highlight! link NoiceCompletionItemKindColor StatementBuiltin
  highlight! link NoiceCompletionItemKindConstant ConstIdentifier
  highlight! link NoiceCompletionItemKindConstructor Type
  highlight! link NoiceCompletionItemKindDefault Text
  highlight! link NoiceCompletionItemKindEnumMember Property
  highlight! link NoiceCompletionItemKindEnum Type
  highlight! link NoiceCompletionItemKindField Property
  highlight! link NoiceCompletionItemKindFile Text
  highlight! link NoiceCompletionItemKindFolder Directory
  highlight! link NoiceCompletionItemKindFunction Accent
  highlight! link NoiceCompletionItemKindInterface Type
  highlight! link NoiceCompletionItemKindKeyword Keyword
  highlight! link NoiceCompletionItemKindMethod Accent
  highlight! link NoiceCompletionItemKindModule Text
  highlight! link NoiceCompletionItemKindProperty Property
  highlight! link NoiceCompletionItemKindSnippet Text
  highlight! link NoiceCompletionItemKindStruct Type
  highlight! link NoiceCompletionItemKindText Text
  highlight! link NoiceCompletionItemKindUnit Number
  highlight! link NoiceCompletionItemKindValue Text
  highlight! link NoiceCompletionItemKindVariable Identifier
endif
" }}}
" null-ls: {{{
if enfocado#pluginIsActivated('null-ls', 1)
  highlight! link NullLsInfoHeader Title
  highlight! link NullLsInfoTitle Title
  highlight! link NullLsInfoBorder FloatBorder
  highlight! link NullLsInfoSources Success
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
  highlight! link CmpItemKindEvent Builtin
  highlight! link CmpItemKindField Property
  highlight! link CmpItemKindFile Text
  highlight! link CmpItemKindFolder Directory
  highlight! link CmpItemKindFunction Accent
  highlight! link CmpItemKindInterface Type
  highlight! link CmpItemKindKeyword Keyword
  highlight! link CmpItemKindMethod Accent
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

  call enfocado#highlighter('CmpItemKindTabNine', s:nocombine, s:none, s:br_violet, s:none)
endif
" }}}
" nvim-dap-ui: {{{
if enfocado#pluginIsActivated('dap-ui', 1)
  call enfocado#highlighter('DapUIPlayPause', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('DapUIPlayPauseNC', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('DapUIRestart', s:nocombine, s:none, s:br_green, s:none)
  call enfocado#highlighter('DapUIRestartNC', s:nocombine, s:none, s:green, s:none)
  call enfocado#highlighter('DapUIStepBack', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('DapUIStepBackNC', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('DapUIStepInto', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('DapUIStepIntoNC', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('DapUIStepOut', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('DapUIStepOutNC', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('DapUIStepOver', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('DapUIStepOverNC', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('DapUIStop', s:nocombine, s:none, s:br_red, s:none)
  call enfocado#highlighter('DapUIStopNC', s:nocombine, s:none, s:red, s:none)
  call enfocado#highlighter('DapUIUnavailable', s:nocombine, s:none, s:dim_0, s:none)
  call enfocado#highlighter('DapUIUnavailableNC', s:nocombine, s:none, s:bg_2, s:none)
  highlight! link DapUIVariable Identifier
  highlight! link DapUIScope Title
  highlight! link DapUIType Type
  highlight! link DapUIValue Text
  highlight! link DapUIModifiedValue DiffChange
  highlight! link DapUIDecoration Accent
  highlight! link DapUIThread Success
  highlight! link DapUIStoppedThread Error
  highlight! link DapUIFrameName Title
  highlight! link DapUISource Text
  highlight! link DapUILineNumber LineNr
  highlight! link DapUINormal Normal
  highlight! link DapUINormalNC NormalNC
  highlight! link DapUIFloatNormal NormalFloat
  highlight! link DapUIFloatBorder FloatBorder
  highlight! link DapUIWatchesEmpty Text
  highlight! link DapUIWatchesValue Text
  highlight! link DapUIWatchesError Error
  highlight! link DapUIBreakpointsPath Text
  highlight! link DapUIBreakpointsInfo DiagnosticInfo
  highlight! link DapUIBreakpointsCurrentLine DiffChange
  highlight! link DapUIBreakpointsLine LineNr
  highlight! link DapUIBreakpointsDisabledLine LineNr
  highlight! link DapUICurrentFrameName DiffChange
  highlight! link DapUIEndofBuffer EndOfBuffer
  highlight! link DapUIWinSelect Accent
endif
" }}}
" lazy.nvim: {{{
if enfocado#pluginIsActivated('lazy', 1)
  call enfocado#highlighter('LazyButton', s:nocombine, s:bg_2, s:fg_0, s:none)
  call enfocado#highlighter('LazyButtonActive', s:nocombine, s:accent_0, s:bg_1, s:none)
  highlight! link LazyComment Comment
  highlight! link LazyCommit Question
  highlight! link LazyCommitIssue Keyword
  highlight! link LazyCommitScope Indentifier
  highlight! link LazyCommitType Keyword
  highlight! link LazyDir Directory
  highlight! link LazyH1 LazyButtonActive
  highlight! link LazyH2 Title
  highlight! link LazyNoCond Dimmed
  highlight! link LazyNormal NormalFloat
  highlight! link LazyProgressDone Success
  highlight! link LazyProgressTodo NonText
  highlight! link LazyProp Property
  highlight! link LazyReasonCmd Question
  highlight! link LazyReasonEvent Question
  highlight! link LazyReasonFt Question
  highlight! link LazyReasonImport Text
  highlight! link LazyReasonKeys Question
  highlight! link LazyReasonPlugin Directory
  highlight! link LazyReasonRuntime Text
  highlight! link LazyReasonSource Question
  highlight! link LazyReasonStart Success
  highlight! link LazySpecial Special
  highlight! link LazyTaskError DiagnosticVirtualTextError
  highlight! link LazyTaskOutput DiagnosticVirtualTextWarn
  highlight! link LazyUrl Link
  highlight! link LazyValue Constant
  highlight! link LazyLocal Text
  highlight! link LazyDimmed Dimmed
endif
" }}}
" lsp-inlayhints.nvim: {{{
if enfocado#pluginIsActivated('lsp-inlayhints', 1)
  call enfocado#highlighter('LspInlayHint', s:nocombine, s:bg_1, s:dim_0, s:none)
endif
" }}}
" mason.nvim: {{{
if enfocado#pluginIsActivated('mason', 1)
  highlight! link MasonNormal NormalFloat
  call enfocado#highlighter('MasonHeader', s:nocombine, s:accent_0, s:bg_1, s:none)
  call enfocado#highlighter('MasonHeaderSecondary', s:nocombine, s:accent_1, s:bg_1, s:none)

  highlight! link MasonHighlight Accent
  call enfocado#highlighter('MasonHighlightBlock', s:nocombine, s:accent_0, s:bg_1, s:none)
  call enfocado#highlighter('MasonHighlightBlockBold', s:bold, s:accent_0, s:bg_1, s:none)

  highlight! link MasonHighlightSecondary AccentSecondary
  call enfocado#highlighter('MasonHighlightBlockSecondary', s:nocombine, s:accent_1, s:bg_1, s:none)
  call enfocado#highlighter('MasonHighlightBlockBoldSecondary', s:bold, s:accent_1, s:bg_1, s:none)

  highlight! link MasonMuted Dimmed
  call enfocado#highlighter('MasonMutedBlock', s:nocombine, s:dim_0, s:bg_1, s:none)
  call enfocado#highlighter('MasonMutedBlockBold', s:bold, s:dim_0, s:bg_1, s:none)

  highlight! link MasonError DiagnosticError
  highlight! link MasonWarning DiagnosticWarn
  highlight! link MasonHeading Title
  highlight! link MasonLink Link
endif
" }}}
" neo-tree.nvim: {{{
if enfocado#pluginIsActivated('neo-tree', 1)
  highlight! link NeoTreeBufferNumber Number
  highlight! link NeoTreeCursorLine CursorLine
  highlight! link NeoTreeDimText Dimmed
  highlight! link NeoTreeDirectoryIcon NeoTreeDirectoryName
  highlight! link NeoTreeDirectoryName Directory
  highlight! link NeoTreeDotfile NeoTreeFileName
  highlight! link NeoTreeFileIcon NeoTreeFileName
  highlight! link NeoTreeFileName Text
  highlight! link NeoTreeFileNameOpened Accent
  highlight! link NeoTreeFilterTerm Search
  highlight! link NeoTreeFloatNormal NormalFloat
  highlight! link NeoTreeFloatBorder FloatBorder
  highlight! link NeoTreeFloatTitle NormalFloat
  highlight! link NeoTreeGitAdded DiffAdd
  highlight! link NeoTreeGitConflict DiagnosticWarn
  highlight! link NeoTreeGitDeleted DiffDelete
  highlight! link NeoTreeGitIgnored Dimmed
  highlight! link NeoTreeGitModified DiffChange
  highlight! link NeoTreeGitRenamed DiffChange
  highlight! link NeoTreeGitUnstaged Dimmed
  highlight! link NeoTreeGitUntracked Dimmed
  highlight! link NeoTreeGitStaged DiffAdd
  highlight! link NeoTreeHiddenByName Dimmed
  highlight! link NeoTreeIndentMarker NonText
  highlight! link NeoTreeExpander NonText
  highlight! link NeoTreeNormal Normal
  highlight! link NeoTreeNormalNC NormalNC
  highlight! link NeoTreeSignColumn SignColumn
  highlight! link NeoTreeStatusLine StatusLine
  highlight! link NeoTreeStatusLineNC StatusLineNC
  highlight! link NeoTreeVertSplit VertSplit
  highlight! link NeoTreeWinSeparator WinSeparator
  highlight! link NeoTreeEndOfBuffer EndOfBuffer
  highlight! link NeoTreeRootName NeoTreeDirectoryName
  highlight! link NeoTreeSymbolicLinkTarget FileLink
  highlight! link NeoTreeTitleBar NeoTreeFloatTitle
  highlight! link NeoTreeWindowsHidden Dimmed

  " Tabs.
  call enfocado#highlighter('NeoTreeTabInactive', s:nocombine, s:base, s:bg_2, s:none)
  call enfocado#highlighter('NeoTreeTabActive', s:nocombine, s:none, s:br_accent_0, s:none)
  call enfocado#highlighter('NeoTreeTabSeparatorInactive', s:nocombine, s:base, s:base, s:none)
  call enfocado#highlighter('NeoTreeTabSeparatorActive', s:nocombine, s:none, s:br_accent_0, s:none)

  " Others.
  highlight! link NeoTreeModified Accent
  highlight! link NeoTreeMessage MsgArea
endif
" }}}
" nvim-lspconfig: {{{
if enfocado#pluginIsActivated('lspconfig', 1)
  highlight! link LspInfoTitle Title
  highlight! link LspInfoList Dimmed
  highlight! link LspInfoFiletype DiagnosticOk
  highlight! link LspInfoTip DiagnosticInfo
  highlight! link LspInfoBorder FloatBorder
endif
" }}}
" nvim-notify: {{{
if enfocado#pluginIsActivated('notify', 1)
  call enfocado#highlighter('NotifyERRORBorder', s:nocombine, s:bg_1, s:br_red, s:none)
  call enfocado#highlighter('NotifyDEBUGBorder', s:nocombine, s:bg_1, s:dim_0, s:none)
  call enfocado#highlighter('NotifyINFOBorder', s:nocombine, s:bg_1, s:br_yellow, s:none)
  call enfocado#highlighter('NotifyTRACEBorder', s:nocombine, s:bg_1, s:br_magenta, s:none)
  call enfocado#highlighter('NotifyWARNBorder', s:nocombine, s:bg_1, s:br_orange, s:none)
  highlight! link NotifyERRORIcon DiagnosticError
  highlight! link NotifyDEBUGIcon Debug
  highlight! link NotifyINFOIcon DiagnosticInfo
  highlight! link NotifyTRACEIcon Trace
  highlight! link NotifyWARNIcon DiagnosticWarn
  highlight! link NotifyERRORTitle NotifyERRORIcon
  highlight! link NotifyDEBUGTitle NotifyDEBUGIcon
  highlight! link NotifyINFOTitle NotifyINFOIcon
  highlight! link NotifyTRACETitle NotifyTRACEIcon
  highlight! link NotifyWARNTitle NotifyWARNIcon
  highlight! link NotifyERRORBody NormalFloat
  highlight! link NotifyDEBUGBody NormalFloat
  highlight! link NotifyINFOBody NormalFloat
  highlight! link NotifyTRACEBody NormalFloat
  highlight! link NotifyWARNBody NormalFloat
endif
" }}}
" nvim-scrollview: {{{
if enfocado#pluginIsActivated('scrollview', 1)
  highlight! link ScrollView Line
endif
" }}}
" nvim-surround: {{{
if enfocado#pluginIsActivated('surround', 1)
  highlight! link NvimSurroundHighlight Search
endif
" }}}
" nvim-treesitter: {{{
if enfocado#pluginIsActivated('treesitter', 1)
  " Text.
  call enfocado#highlighter('@text.danger', s:bold, s:br_red, s:bg_1, s:none)
  call enfocado#highlighter('@text.note', s:bold, s:br_yellow, s:bg_1, s:none)
  call enfocado#highlighter('@text.warning', s:bold, s:br_orange, s:bg_1, s:none)
  call enfocado#highlighter('@text.title', s:nocombine, s:none, s:fg_1, s:none)
  call enfocado#highlighter('@none', s:none, s:none, s:none, s:none)
  call enfocado#highlighter('@text.literal', s:italic, s:none, s:fg_0, s:none)
  highlight! link @text Text
  highlight! link @text.environment.name StatementBuiltin
  highlight! link @text.environment Text
  highlight! link @text.math StatementBuiltin
  highlight! link @text.reference @text.literal
  highlight! link @text.uri Link
  highlight! link @text.todo Todo
  highlight! @text.emphasis term=italic cterm=italic gui=italic
  highlight! @text.strike term=strikethrough cterm=strikethrough gui=strikethrough
  highlight! @text.strong term=bold cterm=bold gui=bold
  highlight! @text.underline term=underline cterm=underline gui=underline

  " Miscs.
  highlight! link @comment Comment
  highlight! link @annotation SpecialComment
  highlight! link @attribute SpecialComment
  highlight! link @punctuation Delimiter
  highlight! link @punctuation.bracket Delimiter
  highlight! link @punctuation.delimiter Delimiter
  highlight! link @punctuation.special StatementBuiltin

  " Constants.
  highlight! link @constant ConstIdentifier
  highlight! link @constant.builtin ConstIdentifier
  highlight! link @constant.macro ConstIdentifier
  highlight! link @define PreProc
  highlight! link @macro Macro
  highlight! link @string String
  highlight! link @string.escape StatementBuiltin
  highlight! link @string.special StatementBuiltin
  highlight! link @string.regex StatementBuiltin
  highlight! link @character Character
  highlight! link @character.special SpecialChar
  highlight! link @number Number
  highlight! link @boolean Boolean
  highlight! link @float Float

  " Functions.
  highlight! link @function Function
  highlight! link @function.builtin FunctionBuiltin
  highlight! link @function.macro Function
  highlight! link @function.call Function
  highlight! link @parameter Identifier
  highlight! link @parameter.reference Indentifier
  highlight! link @method Method
  highlight! link @method.call Method
  highlight! link @field Property
  highlight! link @property Property
  highlight! link @constructor Type

  " Keywords.
  highlight! link @conditional Conditional
  highlight! link @repeat Repeat
  highlight! link @label Label
  highlight! link @operator Operator
  highlight! link @keyword Keyword
  highlight! link @keyword.function Type
  highlight! link @keyword.operator Operator
  highlight! link @keyword.return Keyword
  highlight! link @exception Exception
  highlight! link @error Error

  highlight! link @variable Identifier
  highlight! link @variable.builtin IdentifierBuiltin
  highlight! link @symbol Identifier
  highlight! link @type Type
  highlight! link @type.definition PreProc
  highlight! link @type.builtin TypeBuiltin
  highlight! link @type.qualifier Type
  highlight! link @storageclass StorageClass
  highlight! link @namespace Text
  highlight! link @include Include
  highlight! link @preproc PreProc
  highlight! link @debug Debug
  highlight! link @tag Tag
  highlight! link @tag.attribute Identifier
  highlight! link @tag.delimiter Delimiter

  " TSModule info.
  highlight! link TSModuleInfoGood DiagnosticOk
  highlight! link TSModuleInfoBad DiagnosticError
  highlight! link TSModuleInfoHeader Accent
  highlight! link TSModuleInfoNamespace Title
  highlight! link TSModuleInfoParser Text
endif
" }}}
" nvim-tree.lua: {{{
if enfocado#pluginIsActivated('tree', 1)
  call enfocado#highlighter('NvimTreeImageFile', s:bold, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('NvimTreeSpecialFile', s:bold_underline, s:none, s:br_yellow, s:yellow)
  highlight! link NvimTreeCursorColumn Line
  highlight! link NvimTreeCursorLine Line
  highlight! link NvimTreeEmptyFolderName Directory
  highlight! link NvimTreeEndOfBuffer EndOfBuffer
  highlight! link NvimTreeExecFile FileExec
  highlight! link NvimTreeFileDeleted DiffDelete
  highlight! link NvimTreeFileDirty DiffChange
  highlight! link NvimTreeFileMerge DiffChange
  highlight! link NvimTreeFileNew DiffAdd
  highlight! link NvimTreeFileRenamed DiffAdd
  highlight! link NvimTreeFileStaged DiffChange
  highlight! link NvimTreeFolderIcon Directory
  highlight! link NvimTreeFolderName Directory
  highlight! link NvimTreeGitDeleted DiffDelete
  highlight! link NvimTreeGitDirty DiffChange
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
  highlight! link NvimTreeRootFolder Directory
  highlight! link NvimTreeSignColumn SignColumn
  highlight! link NvimTreeStatusLine StatusLine
  highlight! link NvimTreeStatusLineNC StatusLineNC
  highlight! link NvimTreeSymlink FileLink
  highlight! link NvimTreeVertSplit VertSplit
  highlight! link NvimTreeWindowPicker Accent
endif
" }}}
" nvim-ts-rainbow: {{{
if enfocado#pluginIsActivated('ts-rainbow', 1)
  call enfocado#highlighter('rainbowcol1', s:none, s:none, s:accent_1, s:none)
  call enfocado#highlighter('rainbowcol2', s:none, s:none, s:cyan, s:none)
  call enfocado#highlighter('rainbowcol3', s:none, s:none, s:accent_0, s:none)
  call enfocado#highlighter('rainbowcol4', s:none, s:none, s:br_accent_1, s:none)
  call enfocado#highlighter('rainbowcol5', s:none, s:none, s:br_cyan, s:none)
  call enfocado#highlighter('rainbowcol6', s:none, s:none, s:br_accent_0, s:none)
  call enfocado#highlighter('rainbowcol7', s:none, s:none, s:accent_1, s:none)
endif
" }}}
" nvim-ts-rainbow2: {{{
if enfocado#pluginIsActivated('ts-rainbow2', 1)
  call enfocado#highlighter('TSRainbowRed', s:none, s:none, s:br_red, s:none)
  call enfocado#highlighter('TSRainbowYellow', s:none, s:none, s:br_yellow, s:none)
  call enfocado#highlighter('TSRainbowBlue', s:none, s:none, s:br_blue, s:none)
  call enfocado#highlighter('TSRainbowOrange', s:none, s:none, s:br_orange, s:none)
  call enfocado#highlighter('TSRainbowGreen', s:none, s:none, s:br_green, s:none)
  call enfocado#highlighter('TSRainbowViolet', s:none, s:none, s:br_violet, s:none)
  call enfocado#highlighter('TSRainbowCyan', s:none, s:none, s:br_cyan, s:none)
endif
" }}}
" packer.nvim: {{{
if enfocado#pluginIsActivated('packer', 1)
  highlight! link packerWorking Accent
  highlight! link packerSuccess DiagnosticOk
  highlight! link packerFail DiagnosticError
  highlight! link packerStatus DiagnosticInfo
  highlight! link packerStatusSuccess DiagnosticOk
  highlight! link packerStatusFail DiagnosticError
  highlight! link packerStatusCommit Dimmed
  highlight! link packerHash Dimmed
  highlight! link packerRelDate Dimmed
  highlight! link packerProgress DiagnosticInfo
  highlight! link packerOutput Text
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
  let s:rainbow_guifgs = [s:accent_1[0], s:cyan[0], s:accent_0[0], s:br_accent_1[0]]
  let s:rainbow_ctermfgs = [s:accent_1[1], s:cyan[1], s:accent_0[1], s:br_accent_1[1]]

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
" SmoothCursor.nvim: {{{
if enfocado#pluginIsActivated('smoothcursor', 1)
  call enfocado#highlighter('SmoothCursor', s:nocombine, s:none, s:br_accent_0, s:none)
  call enfocado#highlighter('SmoothCursorRed', s:nocombine, s:none, s:br_red, s:none)
  call enfocado#highlighter('SmoothCursorGreen', s:nocombine, s:none, s:br_green, s:none)
  call enfocado#highlighter('SmoothCursorYellow', s:nocombine, s:none, s:br_yellow, s:none)
  call enfocado#highlighter('SmoothCursorBlue', s:nocombine, s:none, s:br_blue, s:none)
  call enfocado#highlighter('SmoothCursorPurple', s:nocombine, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('SmoothCursorAqua', s:nocombine, s:none, s:br_cyan, s:none)
  call enfocado#highlighter('SmoothCursorOrange', s:nocombine, s:none, s:br_orange, s:none)
endif
" }}}
" substitute.nvim: {{{
if enfocado#pluginIsActivated('substitute', 1)
  highlight! link SubstituteRange Search
  highlight! link SubstituteExchange Search
  highlight! link SubstituteSubstituted Search
endif
" }}}
" telescope.nvim: {{{
if enfocado#pluginIsActivated('telescope', 1)
  call enfocado#highlighter('TelescopePreviewDate', s:nocombine, s:none, s:blue, s:none)
  call enfocado#highlighter('TelescopePreviewRead', s:bold, s:none, s:br_yellow, s:none)
  call enfocado#highlighter('TelescopePreviewSize', s:nocombine, s:none, s:br_green, s:none)
  call enfocado#highlighter('TelescopePreviewUser', s:bold, s:none, s:br_yellow, s:none)
  call enfocado#highlighter('TelescopePreviewWrite', s:bold, s:none, s:br_red, s:none)
  highlight! link TelescopeBorder FloatBorder
  highlight! link TelescopeMatching Match
  highlight! link TelescopeMultiIcon Accent
  highlight! link TelescopeMultiSelection Visual
  highlight! link TelescopeNormal NormalFloat
  highlight! link TelescopePreviewBorder FloatBorder
  highlight! link TelescopePreviewDirectory Directory
  highlight! link TelescopePreviewGroup TelescopePreviewUser
  highlight! link TelescopePreviewExecute FileExec
  highlight! link TelescopePreviewLink FileLink
  highlight! link TelescopePreviewMatch Search
  highlight! link TelescopePreviewMessage DiagnosticInfo
  highlight! link TelescopePreviewMessageFillchar DiagnosticInfo
  highlight! link TelescopePreviewNormal NormalFloat
  highlight! link TelescopePreviewTitle TelescopeTitle
  highlight! link TelescopePromptBorder FloatBorder
  highlight! link TelescopePromptCounter DiagnosticInfo
  highlight! link TelescopePromptNormal NormalFloat
  highlight! link TelescopePromptPrefix Text
  highlight! link TelescopePromptTitle TelescopeTitle
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
  highlight! link TelescopeResultsTitle TelescopeTitle
  highlight! link TelescopeResultsVariable Identifier
  highlight! link TelescopeSelection Visual
  highlight! link TelescopeSelectionCaret Visual
  highlight! link TelescopeTitle TelescopeNormal
endif
" }}}
" todo-comments.nvim: {{{
if enfocado#pluginIsActivated('todo-comments', 1)
  call enfocado#highlighter('TodoBgFIX', s:bold, s:br_red, s:bg_1, s:none)
  call enfocado#highlighter('TodoBgHACK', s:bold, s:br_yellow, s:bg_1, s:none)
  call enfocado#highlighter('TodoBgNOTE', s:bold, s:br_green, s:bg_1, s:none)
  call enfocado#highlighter('TodoBgPERF', s:bold, s:br_magenta, s:bg_1, s:none)
  call enfocado#highlighter('TodoBgTEST', s:bold, s:br_orange, s:bg_1, s:none)
  call enfocado#highlighter('TodoBgTODO', s:bold, s:br_cyan, s:bg_1, s:none)
  call enfocado#highlighter('TodoBgWARN', s:bold, s:br_orange, s:bg_1, s:none)
  call enfocado#highlighter('TodoFgFIX', s:nocombine, s:none, s:br_red, s:none)
  call enfocado#highlighter('TodoFgHACK', s:nocombine, s:none, s:br_yellow, s:none)
  call enfocado#highlighter('TodoFgNOTE', s:nocombine, s:none, s:br_green, s:none)
  call enfocado#highlighter('TodoFgPERF', s:nocombine, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('TodoFgTEST', s:nocombine, s:none, s:br_orange, s:none)
  call enfocado#highlighter('TodoFgTODO', s:nocombine, s:none, s:br_cyan, s:none)
  call enfocado#highlighter('TodoFgWARN', s:nocombine, s:none, s:br_orange, s:none)
  call enfocado#highlighter('TodoSignFIX', s:nocombine, s:none, s:br_red, s:none)
  call enfocado#highlighter('TodoSignHACK', s:nocombine, s:none, s:br_yellow, s:none)
  call enfocado#highlighter('TodoSignNOTE', s:nocombine, s:none, s:br_green, s:none)
  call enfocado#highlighter('TodoSignPERF', s:nocombine, s:none, s:br_magenta, s:none)
  call enfocado#highlighter('TodoSignTEST', s:nocombine, s:none, s:br_orange, s:none)
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
  if (s:termguicolors && &termguicolors) || s:gui_running
    call enfocado#highlighter('GitGutterAddLine', s:none, s:blend_added, s:none, s:none)
    call enfocado#highlighter('GitGutterChangeLine', s:none, s:blend_modified, s:none, s:none)
    call enfocado#highlighter('GitGutterDeleteLine', s:none, s:blend_removed, s:none, s:none)
    call enfocado#highlighter('GitGutterChangeDeleteLine', s:none, s:blend_removed, s:none, s:none)
  else
    call enfocado#highlighter('GitGutterAddLine', s:none, s:green, s:bg_1, s:none)
    call enfocado#highlighter('GitGutterChangeLine', s:none, s:yellow, s:bg_1, s:none)
    call enfocado#highlighter('GitGutterDeleteLine', s:none, s:red, s:bg_1, s:none)
    call enfocado#highlighter('GitGutterChangeDeleteLine', s:none, s:red, s:bg_1, s:none)
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
" vim-illuminate: {{{
if enfocado#pluginIsActivated('illuminate', 0)
  highlight! link IlluminatedWord Visual
  highlight! link IlluminatedWordText IlluminatedWord
  highlight! link IlluminatedWordRead IlluminatedWord
  highlight! link IlluminatedWordWrite IlluminatedWord
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
    if (s:termguicolors && &termguicolors) || s:gui_running
      call enfocado#highlighter('SignifyLineAdd', s:none, s:blend_added, s:none, s:none)
      call enfocado#highlighter('SignifyLineChange', s:none, s:blend_modified, s:none, s:none)
      call enfocado#highlighter('SignifyLineChangeDelete', s:none, s:blend_modified, s:none, s:none)
      call enfocado#highlighter('SignifyLineDelete', s:none, s:blend_removed, s:none, s:none)
      call enfocado#highlighter('SignifyLineDeleteFirstLine', s:none, s:blend_removed, s:none, s:none)
    else
      call enfocado#highlighter('SignifyLineAdd', s:none, s:green, s:bg_1, s:none)
      call enfocado#highlighter('SignifyLineChange', s:none, s:yellow, s:bg_1, s:none)
      call enfocado#highlighter('SignifyLineChangeDelete', s:none, s:yellow, s:bg_1, s:none)
      call enfocado#highlighter('SignifyLineDelete', s:none, s:red, s:bg_1, s:none)
      call enfocado#highlighter('SignifyLineDeleteFirstLine', s:none, s:red, s:bg_1, s:none)
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
    call enfocado#highlighter('VM_Extend', s:bold, s:bg_2, s:accent_0, s:none)
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
" yanky.nvim: {{{
if enfocado#pluginIsActivated('yanky', 1)
  call enfocado#highlighter('YankyPut', s:reverse, s:none, s:none, s:none)
  call enfocado#highlighter('YankyYanked', s:reverse, s:none, s:none, s:none)
endif
" }}}

