# Enfocado for Vim

![Banner](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/images/banner.png)

[![License Badge](https://img.shields.io/badge/License-MIT-3FC5B7.svg?style=for-the-badge)](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)
[![README Style Badge](https://img.shields.io/badge/README%20Style-Standard-3FC5B7.svg?style=for-the-badge)](https://github.com/RichardLitt/standard-readme)

**Enfocado** is more than a theme, it is a concept of **"how themes should be"**, focusing on what is really important to developers: the **code** and nothing else.

The features of this theme are:

- Use of **well-founded CIELAB** Selenized black color scheme. Learn about its features and design [here](https://github.com/jan-warchol/selenized/blob/master/features-and-design.md).
- Choose from two **styles** of **Enfocado** theme:
  - **Nature**, for developers who are always connected with nature.
  - **Neon**, for more daring, outgoing and futuristic coders. **✨ NEW FEATURE !! ✨**
- Only three colors are used mainly to highlight the syntax, this following the **color guidelines for web design**, which indicate that a nice interface should have **only three colors**, no more.
- The important colors (orange & red) are reserved for **important alerts only**, as they should be.
- Focus on **coding** and nothing more than **coding**.
- What is not important, is dimmed, **really minimalist**.
- Human writing (italicized) is simulated for syntax groups (comments, methods, titles, and more...) that are usually written with **human language**, (feature available only with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) installed).

<figure align="center">
  <img src="https://github.com/wuelnerdotexe/vim-enfocado/blob/main/images/nature.png">
  <figcaption>
    <small>Enfocado Nature</small>
  </figcaption>
</figure>
<figure align="center">
  <img src="https://github.com/wuelnerdotexe/vim-enfocado/blob/main/images/neon.png">
  <figcaption>
    <small>Enfocado Neon</small>
  </figcaption>
</figure>

## Table of Contents

- [Installation](#installation)
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

Then choose your favorite **Enfocado** style (`nature` or `neon`), for example:

```vim
let g:enfocado_style = "neon"
```

And finally turn on the **Enfocado** theme and enjoy!

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
- [Enfocado for VS Code](https://github.com/wuelnerdotexe/vscode-enfocado). 🔥

## Credits

- Theme colorscheme by [Jan Warchol](https://github.com/jan-warchol) on [Github](https://github.com/jan-warchol/selenized/blob/master/the-values.md).
- Enfocado Nature wallpaper by [Josefin](https://unsplash.com/@josefin?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/nature?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
- Enfocado Neon wallpaper by [Dilyara Garifullina](https://unsplash.com/@dilja96?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/neon?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).

## Contributing

All your ideas and suggestions are welcome! 🙌

Let me see your captures and let me know what you think with the hashtag **#HowThemesShouldBe**. 👀

And of course, if you want to motivate me to constantly improve this theme, your donations are welcome at [PayPal](https://paypal.me/wuelnerdotexe). 👉👈

## License

[MIT &copy; Wuelner Martínez.](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)

<footer><p align="center"><strong>¡Con 💖 de Latinoamérica para el mundo!</strong></p></footer>
