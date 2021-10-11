-- ----------------------------------------------------------------------------
-- Name:        Vim Enfocado
-- Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
-- URL:         https://github.com/wuelnerdotexe/vim-enfocado
-- License:     MIT (C) Wuelner Martínez.
-- Description: How the themes should be.
-- About:       Enfocado is more than a theme, it is a concept of "how themes
--              should be", focusing on what is really important to developers:
--              the code and nothing else.
-- ----------------------------------------------------------------------------

-- Selenized black colorscheme.
local colors = {
  black         = '#252525',
  red           = '#Ed4A46',
  green         = '#70B433',
  yellow        = '#DBB32D',
  blue          = '#368AEB',
  purple        = '#EB6EB7',
  cyan          = '#3FC5B7',
  bright_black  = '#3B3B3B',
  bright_red    = '#FF5E56',
  bright_green  = '#83C746',
  bright_yellow = '#EFC541',
  bright_blue   = '#4F9CFE',
  bright_purple = '#FF81CA',
  bright_cyan   = '#56D8C9',
  background    = '#181818',
  foreground    = '#DEDEDE',
  dim           = '#777777',
  orange        = '#E67F43',
  violet        = '#A580E2',
  bright_orange = '#FA9153',
  bright_violet = '#B891F5',
}

-- Text types.
local text_types = {
  bold = 'bold',
}

return {
  normal = {
    a = { fg = colors.black, bg = colors.dim, gui = text_types.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  insert = {
    a = { fg = colors.black, bg = colors.bright_yellow, gui = text_types.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  visual = {
    a = { fg = colors.black, bg = colors.dim, gui = text_types.bold },
    b = { fg = colors.bright_black, bg = colors.black },
    c = { fg = colors.bright_black, bg = colors.black }
  },
  replace = {
    a = { fg = colors.black, bg = colors.bright_yellow, gui = text_types.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  command = {
    a = { fg = colors.black, bg = colors.dim, gui = text_types.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  inactive = {
    a = { fg = colors.dim, bg = colors.black, gui = text_types.bold },
    b = { fg = colors.dim, bg = colors.black }
  }
}
