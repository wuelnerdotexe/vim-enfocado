-- ----------------------------------------------------------------------------
-- Name:        Enfocado for LuaLine
-- Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
-- URL:         https://github.com/wuelnerdotexe/vim-enfocado
-- License:     MIT (C) Wuelner Martínez.
-- Description: How themes should be.
-- About:       Enfocado is more than a theme, it is a concept of "how themes
--              should be", focusing on what is really important to developers:
--              the code and nothing else.
-- ----------------------------------------------------------------------------

-- Get the color scheme.
local colorScheme = vim.fn['enfocado#getColorScheme']()

-- The colors to use are assigned.
local colors = {
  bg_0 = colorScheme.bg_0[1],
  bg_1 = colorScheme.bg_1[1],
  bg_2 = colorScheme.bg_2[1],
  dim_0 = colorScheme.dim_0[1],
  fg_0 = colorScheme.fg_0[1],
  fg_1 = colorScheme.fg_1[1],
  red = colorScheme.red[1],
  green = colorScheme.green[1],
  yellow = colorScheme.yellow[1],
  blue = colorScheme.blue[1],
  magenta = colorScheme.magenta[1],
  cyan = colorScheme.cyan[1],
  orange = colorScheme.orange[1],
  violet = colorScheme.violet[1],
  br_red = colorScheme.br_red[1],
  br_green = colorScheme.br_green[1],
  br_yellow = colorScheme.br_yellow[1],
  br_blue = colorScheme.br_blue[1],
  br_magenta = colorScheme.br_magenta[1],
  br_cyan = colorScheme.br_cyan[1],
  br_orange = colorScheme.br_orange[1],
  br_violet  = colorScheme.br_violet[1]
}

return {
  normal = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = 'bold' },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  insert = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = 'bold' },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  visual = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = 'bold' },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  replace = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = 'bold' },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  command = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = 'bold' },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  inactive = {
    a = { fg = colors.bg_2, bg = colors.bg_1, gui = 'bold' },
    b = { fg = colors.bg_2, bg = colors.bg_1 }
  }
}
