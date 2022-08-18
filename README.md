# Enfocado for Vim

![Banner](https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/banner.png)

[![License Badge](https://img.shields.io/badge/License-MIT-3FC5B7.svg?style=for-the-badge)](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)
[![README Style Badge](https://img.shields.io/badge/README%20Style-Standard-3FC5B7.svg?style=for-the-badge)](https://github.com/RichardLitt/standard-readme)

**Enfocado** is more than a theme, it is a concept of **"how themes should be"**, focusing on what is really important to developers: **the code and nothing else**.

What you **won't have** if you **don't install Enfocado**:

- **CIELAB Colors:** use of the well-founded Selenized color scheme created with the magic of the **CIELAB color space**. Learn about its features and design in its [official repository](https://github.com/jan-warchol/selenized/blob/master/features-and-design.md).
- **Human Writing:** human writing is simulated by using italic typeface for syntax groups (comments, methods, structs, and more ...) that are generally named and **written in human language**.
- **Minimal Syntax:** only three colors are used to highlight syntax, following the **color guidelines for web design**, which state that **only three main colors** should be used in interfaces, no more.
- **Signal Alerts:** the yellow, orange and red colors are reserved to be used only with important alerts, following the standards for the meanings of the **signal colors in the industrial area**.
- **Styles:** choose the style that best suits your **personality**:

<div align="center">
  <img src="https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/vim-dark-nature.png">
  <img src="https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/vim-light-nature.png">
  <strong>Nature:</strong> go for the <code>nature</code> style if you are a minimalist developer who is always <strong>connected to nature</strong>.
</div>
<br />
<div align="center">
  <img src="https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/vim-dark-neon.png">
  <img src="https://raw.githubusercontent.com/wuelnerdotexe/enfocado/main/assets/vim-light-neon.png">
  <strong>Neon:</strong> go for the <code>neon</code> style if you are an outgoing developer that is always <strong>surrounded by RGBs</strong>.
</div>

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Statuslines](#statuslines)
  - [Colorscheme](#colorscheme)
  - [Customization](#customization)
  - [Syntax](#syntax)
- [Recommendations](#recommendations)
  - [Tree-sitter](#tree-sitter)
  - [Fonts](#fonts)
  - [Configs](#configs)
  - [Extras](#extras)
- [Maintainer](#maintainer)
- [Contributing](#contributing)
- [Plugins](#plugins)
- [Credits](#credits)
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
let g:airline_theme = 'enfocado'
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

Choose between light or dark theme:

```vim
set background={light or dark}
```

Then choose your favorite **Enfocado** style, for example:

```vim
let g:enfocado_style = 'neon' " Available: `nature` or `neon`.
```

If you want to reduce the loading time of **Enfocado**, you can specify the plugins you want to apply the theme to on demand:

```vim
" NOTE: To see a list of all available plugins, run
" `:h enfocado-colorscheme` at the vim commandline.
let g:enfocado_plugins = [
  \ 'cmp',
  \ 'ctrlp',
  \ 'gitgutter',
  \ 'lsp',
  \ 'lsp-installer',
  \ 'matchup',
  \ 'nerdtree',
  \ 'netrw',
  \ 'plug',
  \ 'startify',
  \ 'visual-multi'
  \ ]
```

And finally turn on the **Enfocado** theme and enjoy!

```vim
colorscheme enfocado
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

To make the **background transparent**, you can use the following:

```vim
augroup enfocado_customization
  autocmd!
    autocmd ColorScheme enfocado ++nested highlight Normal ctermbg=NONE guibg=NONE
augroup END
```

Note: The usage codes must be written in your `.vimrc` or `init.vim`.

### Syntax

Master your theme, understand and recognize syntax, improve your muscle memory.

| SELENIZED COLOR | HEX COLOR | HEX COLOR (light) |  TEXT TYPE  |     NATURE SYNTAX TOKENS     |      NEON SYNTAX TOKENS      |
| --------------- | :-------: | :---------------: | :---------: | :--------------------------: | :--------------------------: |
| Dimmed          | `#777777` |     `#878787`     |  `Italic`   |           Comments           |           Comments           |
| Foreground 0    | `#b9b9b9` |     `#474747`     |   `NONE`    | Constants, punctuation, text | Constants, punctuation, text |
| Foreground 1    | `#dedede` |     `#282828`     |   `Bold`    |            Titles            |            Titles            |
| Red             | `#ed4a46` |     `#d6000c`     | ~~`NONE`~~  |  ~~Not used in the syntax~~  |  ~~Not used in the syntax~~  |
| Yellow          | `#dbb32d` |     `#c49700`     |   `NONE`    |     Constant identifiers     |     Constant identifiers     |
| Green           | `#70b433` |     `#1d9700`     |   `NONE`    |         Identifiers          |     Built-in identifiers     |
| Blue            | `#368aeb` |     `#0064e4`     |   `NONE`    |           Keywords           |      Built-in keywords       |
| Magenta         | `#eb6eb7` |     `#dd0f9d`     |   `NONE`    |     Built-in identifiers     |         Identifiers          |
| Cyan            | `#3fc5b7` |     `#00ad9c`     |   `NONE`    |           Strings            |           Strings            |
| Orange          | `#e67f43` |     `#d04a00`     |   `NONE`    |   Exceptions (`trycatch`)    |   Exceptions (`trycatch`)    |
| Violet          | `#a580e2` |     `#7f51d6`     |   `NONE`    |      Built-in keywords       |           Keywords           |
| Bright red      | `#ff5e56` |     `#bf0000`     |   `Bold`    |            Errors            |            Errors            |
| Bright yellow   | `#83c746` |     `#008400`     |  `Italic`   |       Constant methods       |       Constant methods       |
| Bright green    | `#efc541` |     `#af8500`     |  `Italic`   |           Methods            |       Built-in methods       |
| Bright blue     | `#4f9cfe` |     `#0054cf`     |   `Bold`    |            Types             |        Built-in types        |
| Bright magenta  | `#ff81ca` |     `#c7008b`     |  `Italic`   |       Built-in methods       |           Methods            |
| Bright cyan     | `#56d8c9` |     `#009a8a`     | `Underline` |            Links             |            Links             |
| Bright orange   | `#fa9153` |     `#ba3700`     | ~~`NONE`~~  |  ~~Not used in the syntax~~  |  ~~Not used in the syntax~~  |
| Bright violet   | `#b891f5` |     `#6b40c3`     |   `Bold`    |        Built-in types        |            Types             |

DISCLAIMER: **Enfocado** doesn't customize individual tokens for each language, it just defines the default base, if your syntax doesn't look as described here, it's not our responsibility, it's the responsibility of those who assign wrong tokens to some language's syntax, and we don't lose here our time in correcting those problems constantly.

## Recommendations

### Tree-sitter

If you are on Neovim, it is strongly recommended that you use [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) to ensure that your syntax highlighting is as close as possible to what is described above.

### Fonts

In order for the human text simulation to work as it should, I recommend that you use either of these three beautiful fonts, which align with the **"Mankind and Machine"** concept.

- [IBM Plex Mono](https://www.ibm.com/plex/).
- [Victor Mono](https://rubjo.github.io/victor-mono/).

### Configs

This vim configs comes with **Enfocado for Vim** already installed by default!

- [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim)
- [CodeArt](https://github.com/artart222/CodeArt)

### Extras

- [Enfocado for VS Code](https://github.com/wuelnerdotexe/vscode-enfocado).
- [Selenized for terminals](https://github.com/jan-warchol/selenized/tree/master/terminals).

## Maintainer

> Hi 👋, I'm **[Wuelner](https://linktr.ee/wuelnerdotexe)**, a **software developer from Guatemala**, passionate about creating minimalist solutions using solid fundamentals focused on **"how things should be"**.

## Contributing

All your ideas and suggestions are welcome! 🙌

Let me see your captures and let me know what you think with the hashtag **#HowThemesShouldBe**. 👀

And of course, if you want to motivate me to constantly improve this theme, your donations are welcome at [PayPal](https://paypal.me/wuelnerdotexe). 👉👈

## Plugins

The following plugins are supported:

- [ale](https://github.com/dense-analysis/ale)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [copilot.vim](https://github.com/github/copilot.vim)
- [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
- [nerdtree](https://github.com/preservim/nerdtree)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-scrollview](https://github.com/dstein64/nvim-scrollview)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [rainbow](https://github.com/luochen1990/rainbow)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
- [vim-floaterm](https://github.com/voldikss/vim-floaterm)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-matchup](https://github.com/andymass/vim-matchup)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-startify](https://github.com/mhinz/vim-startify)
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [vista.vim](https://github.com/liuchengxu/vista.vim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Credits

- Theme colorscheme by [Jan Warchol](https://github.com/jan-warchol) on [Github](https://github.com/jan-warchol/selenized/blob/master/the-values.md).
- Enfocado Nature wallpaper by [Josefin](https://unsplash.com/@josefin?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/nature?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
- Enfocado Neon wallpaper by [Dilyara Garifullina](https://unsplash.com/@dilja96?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/neon?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).

## License

[MIT &copy; Wuelner Martínez.](https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE)

<p align="center">With 💖 from <strong>LATAM</strong> to the world!</p>
