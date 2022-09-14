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
  dim_0 = colorScheme.dim_0[1]
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
    a = { fg = colors.bg_2, bg = colors.bg_1 },
    b = { fg = colors.bg_2, bg = colors.bg_1 },
    b = { fg = colors.bg_2, bg = colors.bg_1 }
  }
}

