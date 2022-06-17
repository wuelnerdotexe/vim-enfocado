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
local scheme = vim.fn['enfocado#getScheme']()

-- The colors to use are assigned.
local colors = {
  bg_0 = scheme.bg_0[1],
  bg_1 = scheme.bg_1[1],
  bg_2 = scheme.bg_2[1],
  dim_0 = scheme.dim_0[1],
  fg_0 = scheme.fg_0[1],
  fg_1 = scheme.fg_1[1],
  red = scheme.red[1],
  green = scheme.green[1],
  yellow = scheme.yellow[1],
  blue = scheme.blue[1],
  magenta = scheme.magenta[1],
  cyan = scheme.cyan[1],
  orange = scheme.orange[1],
  violet = scheme.violet[1],
  br_red = scheme.br_red[1],
  br_green = scheme.br_green[1],
  br_yellow = scheme.br_yellow[1],
  br_blue = scheme.br_blue[1],
  br_magenta = scheme.br_magenta[1],
  br_cyan = scheme.br_cyan[1],
  br_orange = scheme.br_orange[1],
  br_violet  = scheme.br_violet
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
