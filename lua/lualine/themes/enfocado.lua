-- -----------------------------------------------------------------------------
-- Name:     VIM ENFOCADO (Lualine Theme)
-- Author:   Wuelner Martínez <wuelnerdotexe@gmail.com>
-- URL:      https://github.com/wuelnerdotexe/vim-enfocado
-- License:  MIT. Copyright (C) 2021 Wuelner Martínez.
-- About:    How the themes should be.
-- -----------------------------------------------------------------------------
-- Philosophy:
-- I decided to create this theme, because all the themes I had
-- used were built to be attractive, but not entirely useful. This is how
-- ENFOCADO was born, the topic that focuses only on what is important for
-- programmers, the code and nothing else.
-- -----------------------------------------------------------------------------
-- Features:
-- - Focused on coding and nothing more than coding.
-- - Use of well-founded Selenized black color scheme. Learn more about the
--   project in https://github.com/jan-warchol/selenized
-- - Use of only three nature-inspired colors (Blue, Cyan, & Green) for
--   syntax highlighting.
-- - The important colors (Orange & Red) are reserved for important alerts only,
--   as they should be.
-- - What is not important, is Black & White, truly minimalist.
-- -----------------------------------------------------------------------------
-- Contributing:
-- All your ideas and suggestions are welcome!
-- Let me see your captures and know what you think with the
-- hashtag #HowTheThemesShouldBe
-- And of course, if you want to motivate me to constantly improve this topic,
-- your donations are welcome at PayPal: https://paypal.me/wuelnerdotexe
-- -----------------------------------------------------------------------------
--               CON AMOR <3 DE LATINOAMÉRICA PARA EL MUNDO.
-- -----------------------------------------------------------------------------

-- Selenized black colorscheme.
local colors = {
  background    = '#181818',
  foreground    = '#DEDEDE',
  black         = '#252525',
  red           = '#Ed4A46',
  green         = '#70B433',
  yellow        = '#DBB32D',
  blue          = '#368AEB',
  purple        = '#EB6EB7',
  cyan          = '#3FC5B7',
  orange        = '#E67F43',
  violet        = '#A580E2',
  bright_black  = '#3B3B3B',
  bright_red    = '#FF5E56',
  bright_green  = '#83C746',
  bright_yellow = '#EFC541',
  bright_blue   = '#4F9CFE',
  bright_purple = '#FF81CA',
  bright_cyan   = '#56D8C9',
  bright_orange = '#FA9153',
  bright_violet = '#B891F5',
  dim           = '#777777',
}

-- Font types.
local fonts = {
  bold = 'bold',
}

return {
  normal = {
    a = { fg = colors.background, bg = colors.dim, gui = fonts.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  insert = {
    a = { fg = colors.background, bg = colors.bright_yellow, gui = fonts.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  visual = {
    a = { fg = colors.background, bg = colors.dim, gui = fonts.bold },
    b = { fg = colors.bright_black, bg = colors.black },
    c = { fg = colors.bright_black, bg = colors.black }
  },
  replace = {
    a = { fg = colors.background, bg = colors.bright_yellow, gui = fonts.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  command = {
    a = { fg = colors.background, bg = colors.dim, gui = fonts.bold },
    b = { fg = colors.dim, bg = colors.black },
    c = { fg = colors.dim, bg = colors.black }
  },
  inactive = {
    a = { fg = colors.dim, bg = colors.black, gui = fonts.bold },
    b = { fg = colors.dim, bg = colors.black }
  }
}
