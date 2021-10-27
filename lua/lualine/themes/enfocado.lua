-- ----------------------------------------------------------------------------
-- Name:        Vim Enfocado
-- Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
-- URL:         https://github.com/wuelnerdotexe/vim-enfocado
-- License:     MIT (C) Wuelner Martínez.
-- Description: How the themes should be.
-- About:       Enfocado is more than a theme, it is a concept of "how the
--              themes should be", focusing on what is really important to
--              developers: the code and nothing else.
-- ----------------------------------------------------------------------------

-- The Selenized black color scheme is declared.
local colors = {
  bg_0       = '#181818',
  bg_1       = '#252525',
  bg_2       = '#3B3B3B',
  dim_0      = '#777777',
  fg_0       = '#B9B9B9',
  fg_1       = '#DEDEDE',
  red        = '#ED4A46',
  green      = '#70B433',
  yellow     = '#DBB32D',
  blue       = '#368AEB',
  magenta    = '#EB6EB7',
  cyan       = '#3FC5B7',
  orange     = '#E67F43',
  violet     = '#A580E2',
  br_red     = '#FF5E56',
  br_green   = '#83C746',
  br_yellow  = '#EFC541',
  br_blue    = '#4F9CFE',
  br_magenta = '#FF81CA',
  br_cyan    = '#56D8C9',
  br_orange  = '#FA9153',
  br_violet  = '#B891F5'
}

-- Attributes are declared. 
local text_types = {
  bold = 'bold'
}

return {
  normal = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = text_types.bold },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  insert = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = text_types.bold },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  visual = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = text_types.bold },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  replace = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = text_types.bold },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  command = {
    a = { fg = colors.dim_0, bg = colors.bg_2, gui = text_types.bold },
    b = { fg = colors.dim_0, bg = colors.bg_1 },
    c = { fg = colors.dim_0, bg = colors.bg_0 }
  },
  inactive = {
    a = { fg = colors.bg_2, bg = colors.bg_1, gui = text_types.bold },
    b = { fg = colors.bg_2, bg = colors.bg_1 }
  }
}
