# Enfocado for Vim

![banner](https://github.com/wuelnerdotexe/vim-enfocado/raw/main/assets/banner.png)

[![license](https://img.shields.io/github/license/wuelnerdotexe/vim-enfocado.svg?style=flat-square)](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

**Enfocado** is more than a theme, it is a concept of **"how the themes should be,"** focusing on what is really important to developers: the **code** and nothing else.

The features of this theme are:

- Use of **well-founded CIELAB** Selenized black color scheme. Learn about its features and design [here](https://github.com/jan-warchol/selenized/blob/master/features-and-design.md).
- Focus on **coding** and nothing more than **coding**.
- Use of **only three** nature-inspired colors (blue, cyan, & green) for syntax highlighting.
- The important colors (orange & red) are reserved for **important alerts only**, as they should be.
- What is not important, is dimmed, **really minimalist**.
- Human writing (italicized) is simulated for syntax groups (booleans, comments, methods, titles, and more...) that are usually written with **human language**, (feature available only with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) installed).

## Table of Contents

- [Install](#install)
- [Usage](#usage)
  - [Statuslines](#statuslines)
  - [Colorscheme](#colorscheme)
  - [Customization](#customization)
- [Recommendations](#recommendations)
  - [Fonts](#fonts)
  - [Extras](#extras)
- [Credits](#credits)
- [Contributing](#contributing)
- [License](#license)

## Installation

Install via your preferred package manager. Example using [vim-plug](https://github.com/junegunn/vim-plug):

Stable Version:

```vim
Plug 'wuelnerdotexe/vim-enfocado'
```

Development version:

```vim
Plug 'wuelnerdotexe/vim-enfocado', { 'branch': 'development' }
```

## Usage

### Statuslines

To use [Lightline](https://github.com/itchyny/lightline.vim) theme:

```vim
let g:lightline = { 'colorscheme': 'enfocado' }
```

To use [Lualine](https://github.com/hoob3rt/lualine.nvim) theme:

```lua
require('lualine').setup { options = { theme = 'enfocado' } }
```

To use [Airline](https://github.com/vim-airline/vim-airline) theme:

```vim
let g:airline_theme = "enfocado"
```

### Colorscheme

First, if you have **true color** support, enable it:

```vim
set termguicolors
```

Otherwise, enable **256 terminal color** support:

```vim
set t_Co=256
```

Then activate the **Enfocado** theme, and enjoy!

```vim
autocmd VimEnter * ++nested colorscheme enfocado
```

### Customization

Like all colorschemes, **Enfocado** is easy to customize with `autocmd`. Make use of the `ColorScheme` event as in the following examples.

It would be a good idea to put all of your personal changes in an `augroup`, which you can do with the following code:

```vim
augroup enfocado_customization
  autocmd!
    " autocmds...
augroup END
```

To make the **background transparent** (same as in the banner), you can use the following:

```vim
augroup enfocado_customization
  autocmd!
      autocmd ColorScheme enfocado highlight Normal ctermbg=NONE guibg=NONE
      autocmd ColorScheme enfocado highlight TabLineSel ctermbg=NONE guibg=NONE
augroup END
```

Note: The usage codes must be written in your `.vimrc` or `init.vim`.

## Recommendations

### Fonts

In order for the human text simulation to work as it should (in addition to installing [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)), I recommend that you use either of these three beautiful fonts, which align with the **"Mankind and Machine"** concept.

- [Cartograph](https://connary.com/cartograph.html) (paid).
- [IBM Plex Mono](https://www.ibm.com/plex/) (free).
- [Victor Mono](https://rubjo.github.io/victor-mono/) (free).

### Extras

- [Selenized black for terminals](https://github.com/jan-warchol/selenized/tree/master/terminals).
- [Enfocado for VSCode](https://github.com/wuelnerdotexe/vscode-enfocado) is coming soon. Wait for it!

## Credits

- Theme colorscheme by [Jan Warchol](https://github.com/jan-warchol) on [Github](https://github.com/jan-warchol/selenized/blob/master/the-values.md).
- Banner wallpaper by [Martin Sattler](https://unsplash.com/@martinsattler?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/nature?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).

## Contributing

All your ideas and suggestions are welcome!

Let me see your captures and let me know what you think with the hashtag **#HowTheThemesShouldBe**.

And of course, if you want to motivate me to constantly improve this theme, your donations are welcome at [PayPal](https://paypal.me/wuelnerdotexe).

## License

[MIT &copy; Wuelner Martínez.](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)
