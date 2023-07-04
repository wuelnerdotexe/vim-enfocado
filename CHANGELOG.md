# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [6.2.0] - 2023-07-04

### Added

- Support for [rainbow-delimiters.nvim](https://gitlab.com/HiPhish/rainbow-delimiters.nvim) plugin.

## [6.1.0] - 2023-06-28

### Added

- Support for the following plugins:
  - [edgy.nvim](https://github.com/folke/edgy.nvim).
  - [flash.nvim](https://github.com/folke/flash.nvim).
  - [highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim).
  - [lsp-lens.nvim](https://github.com/VidocqH/lsp-lens.nvim).
  - [nvim-navic](https://github.com/SmiteshP/nvim-navic).
  - [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context).
  - [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo).

### Changed

- Various improvements are added.

## [6.0.1] - 2023-06-14

### Fixed

- Added more consistency to finders.

## [6.0.0] - 2023-05-24

### Added

- Added support for LSP semantic tokens.
- Added more LSP diagnostic groups.
- Added more `treesitter` groups.
- Various improvements are added.
- Support for the following plugins:
  - [fold-preview.nvim](https://github.com/anuvyklack/fold-preview.nvim)
  - [lsp-inlayhints.nvim](https://github.com/lvimuser/lsp-inlayhints.nvim)
  - [mason.nvim](https://github.com/williamboman/mason.nvim)

## [5.25.0] - 2023-05-13

### Added

- Complete support for `substitute.nvim`.
- Added support for [cmp-tabnine](https://github.com/tzachar/cmp-tabnine).

## [5.24.0] - 2023-03-05

### Added

Added support for the [nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow) and [nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2).

## [5.23.0] - 2023-02-24

### Added

- Added support for [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) plugin.

## [5.22.0] - 2023-02-06

### Added

Added support for the following plugins:

- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [substitute.nvim](https://github.com/gbprod/substitute.nvim)
- [yanky.nvim](https://github.com/gbprod/yanky.nvim)

## [5.21.1] - 2023-01-26

### Fixed

- Fixed swapped colors in `README.md` file (based on https://github.com/wuelnerdotexe/vscode-enfocado/issues/1).
- Example for `enfocado_customization` is optimized.

## [5.21.0] - 2023-01-20

### Added

- Support for [lazy.nvim](https://github.com/folke/lazy.nvim) is added.

### Changed

- Various improvements are madded for `dircolors` on `nvim-tree` and `nvim-telescope`.

## [5.20.1] - 2022-12-20

### Fixed

- The correct command is used to reset the syntax highlighting.

### Changed

- Consistency changes are made in `nvim-telescope`.

## [5.20.0] - 2022-11-30

### Added

Added support for the following plugins:

- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)

### Changed

- The name of the most recent variables is standardized.

### Removed

- Now you don't need to declare "lsp" in `g:enfocado_plugins` (if you use it) to highlight it.

## [5.19.0] - 2022-11-06

### Changed

- Performance is improved by initializing variables that are constantly repeated.
- Improved consistency of [nvim-telescope](https://github.com/nvim-treesitter/nvim-treesitter) with [noice.nvim](https://github.com/folke/noice.nvim).
- Fix the color of the `QuickFixLine` group.

## [5.18.1] - 2022-11-04

### Fixed

- Issue #13 is avoided. Now [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is highlighted only as of `nvim-0.8`.

## [5.18.0] - 2022-10-30

### Added

- Added support for [noice.nvim](https://github.com/folke/noice.nvim) and [SmoothCursor.nvim](https://github.com/gen740/SmoothCursor.nvim) plugins.

### Changed

- Consistency improvements will be added to a [vim-notify](https://github.com/rcarriga/nvim-notify) and [fern.vim](https://github.com/lambdalisue/fern.vim) plugins.

## [5.17.1] - 2022-10-17

### Fixed

- Fixed `AerialLine*` visibility colors.

### Changed

- Remove obsolete `TS*` highlight groups.
see issue [#3572](https://github.com/nvim-treesitter/nvim-treesitter/issues/3572), pull [#3656](https://github.com/nvim-treesitter/nvim-treesitter/pull/3656), and commit [42ab95d](https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f)

## [5.17.0] - 2022-10-10

### Added

- Added support for the [aerial](https://github.com/stevearc/aerial.nvim) plugin.

### Fixed

- Consistency improvements are made.

## [5.16.0] - 2022-09-21

### Added

- Added **Enfocado** groups for use with the indent-blankline plugin.

Added support for the following plugins:

- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim).
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim).

### Changed

- Optimized to get the **Enfocado** styles, which now allows accent colors to be used before and after loading the colorscheme in other plugins with `enfocado#getColorScheme` or in Lua with `vim.fn['enfocado#getColorScheme']()` in the style of an API.

### Fixed

- Fix Git for Fern colors and add a new one for todo-comments.
- Fixed some NvimTree colors.
- Fixed code indentation.
- Fixed issue #9 (Some kind icons in nvim-cmp are displayed in italic).

## [5.15.0] - 2022-09-04

### Added

- Added support for the [vim-illuminate](https://github.com/RRethy/vim-illuminate) plugin.

## [5.14.1] - 2022-09-04

### Fixed

- Consistency improvements are made to indent-blankline and fzf.

## [5.14.0] - 2022-09-02

### Added

Added support for the following plugins:

- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [glyph-palette.vim](https://github.com/lambdalisue/glyph-palette.vim)

## [5.13.1] - 2022-08-31

### Fixed

- The `nocombine` property is now implemented to prevent combining syntax highlighting in some groups.
- The [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) plugin is correctly colored.

## [5.13.0] - 2022-08-29

### Added

- Added support for the [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) plugin.

## [5.12.3] - 2022-08-27

### Fixed

- Some syntax highlight groups are updated.
- Unnecessary plugins are removed.

## [5.12.1] - 2022-08-19

### Fixed

- Line numbers always appear dimmed unless `relativenumbers` are turned on.

## [5.12.0] - 2022-08-17

### Added

- Added a table in the documentation to expose and understand syntax colors.

### Fixed

- Fixed issue #8 where it was originally reported in discussion #7 that Enfocado highlights all Whitespaces as warnings.
- The color for the constants is corrected.

## [5.11.0] - 2022-08-08

### Added

- Pseudo transparency of colors is added to some groups (only available for termguicolors).
- Added support for [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace) plugin.

### Fixed

- Function names are standardized.
- The cases of hexadecimal colors are standardized.

## [5.10.0] - 2022-07-30

### Added

- Now the functions are on-demand increasing the loading speed of Enfocado.

### Fixed

- Underlined diagnostics are now undercurl, making the experience more elegant.

## [5.9.2] - 2022-07-29

### Fixed

- Fixed some colors in file explorers.

## [5.9.1] - 2022-07-28

### Fixed

- Documentation fixed.

## [5.9.0] - 2022-07-27

### Added

- File explorers now follow linux color standards.
- Support for [CtrlP](https://github.com/ctrlpvim/ctrlp.vim) plugin is added.
- Improvements are made to the statuslines.

## [5.8.1] - 2022-07-23

### Fixed

- Small corrections are madded.

## [5.8.0] - 2022-07-21

### Added

- It is decided to change the constants and readonlys to yellow, to give the message that they cannot be modified.
- Exceptions (try - catch) are now highlighted in dimmed orange to give a message of caution.

## [5.7.1] - 2022-07-16

### Added

- Added support for [vim-visual-multi](https://github.com/mg979/vim-visual-multi) and `TSModuleInfo`.

### Fixed

- Some corrections are made.

## [5.6.3] - 2022-07-11

### Fixed

- Minor tweaks to Tree-sitter and Markdown syntax.

## [5.6.2] - 2022-07-08

### Fixed

- Syntax improvements are made based on feedback received from our users.

## [5.6.1] - 2022-06-27

### Fixed

- The virtual text background is improved.

## [5.6.0] - 2022-06-26

### Added

- Added support for [ale](https://github.com/dense-analysis/ale) plugin.

## [5.5.0] - 2022-06-17

### Added

- Introducing our highly requested light versions for **Enfocado**. For users with astigmatism (like me), or simply for coding in offices with good ambient light. 🌴

## [5.4.4] - 2022-06-08

### Added

- Added support for [vim-startify](https://github.com/mhinz/vim-startify) plugin.

### Fixed

- Appropriate colors are chosen for [dashboard-nvim](https://github.com/glepnir/dashboard-nvim).
- Fix plugin name of [which-key.nvim](https://github.com/folke/which-key.nvim).

## [5.3.2] - 2022-05-13

### Fixed

- Cursor color corrected.

## [5.3.1] - 2022-03-23

### Added

- Support is added for [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow) module at the request of our user [@datwaft](https://github.com/wuelnerdotexe/vim-enfocado/issues/5#issuecomment-1074513923).

Added support for the following plugins:

- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

### Changed

- Now **human writing** applies to built-in functions.

### Fixed

- Fixed correct command to activate theme. Thanks to issue [#5](https://github.com/wuelnerdotexe/vim-enfocado/issues/5) by [@datwaft](https://github.com/datwaft). Thank you very much!

## [5.0.0] - 2022-01-15

### Added

- A new feature is added that allows you to apply **Enfocado** only to plugins on-demand.
- Help documentation for vim has been created.
- Now [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is not needed to apply **Human Writing**.

### Changed

Extensive refactoring of the following:

- The highlight function is renamed and optimized.
- Enfocado groups are removed and replaced with native vim groups.
- Many validations that prevent applying the theme are removed.
- Highlight links now make more sense.
- All the code was ordered.

### Fixed

- Fixed "many featured groups" error in [vim-airline](https://github.com/vim-airline/vim-airline).

## [4.3.3] - 2021-12-29

### Fixed

- Highlighting for the spell is optimized.

## [4.3.2] - 2021-12-27

### Added

Support is added for plugins used in CodeArt:

- [nvim-scrollview](https://github.com/dstein64/nvim-scrollview)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [vim-matchup](https://github.com/andymass/vim-matchup)
- [vista.vim](https://github.com/liuchengxu/vista.vim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

### Fixed

- Many improvements are made.

## [4.2.1] - 2021-12-18

### Added

- Full support for coc.nvim was added, including semantic highlighting.
- Enfocado is now more focused!

## [4.1.1] - 2021-12-12

### Added

Support is added for plugins used in CosmicNvim:

- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [vim-floaterm](https://github.com/voldikss/vim-floaterm)

## [4.0.1] - 2021-12-03

### Fixed

- Color consistency for brackets is improved.

## [4.0.0] - 2021-11-23

### Added

- Bright colors are now used for certain syntax groups.

### Changed

- Multiple improvements and optimizations are made. It is recommended to update yes or yes. :)

## [3.13.1] - 2021-11-11

### Fixed

- Small details have been corrected.

## [3.13.0] - 2021-11-08

### Added

- Support for Github Copilot is added.

### Changed

- The correct diffs and foreground colors are chosen and improvements are made to the interface and terminal.

## [3.12.2] - 2021-10-28

### Added

- A new sexy Enfocado style was created for the most daring and outgoing coders, enjoy it!
- Introducing [Enfocado for VS Code](https://github.com/wuelnerdotexe/vscode-enfocado) **is here!**, enjoy it and recommend it with your team.

### Changed

- Supported statuslines themes have been improved.
- The performance of the theme has been greatly improved.
- Consistency improvements were made.

## [3.10.0] - 2021-10-25

### Added

- Support is added for [rainbow](https://github.com/luochen1990/rainbow) parentheses.

### Changed

- A standard was created for choosing colors for syntax highlighting, which will allow consistency with [Enfocado for VSCode](https://github.com/wuelnerdotexe/vscode-enfocado) (sorry for so many color changes in the syntax).

## [3.8.0] - 2021-10-18

### Added

Support is added for the following plugins:

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [nerdtree](https://github.com/preservim/nerdtree)
- [vim-signify](https://github.com/mhinz/vim-signify)

### Changed

- A **function** is created to reduce the highlighting action of each group.
- The code is better organized.
- We have a new sexier banner!

## [2.0.0] - 2021-10-07

### Added

- The official **Enfocado** theme for [lualine.nvim](https://github.com/hoob3rt/lualine.nvim) is created.
- Added **human writing** simulation feature (available only with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) installed).
- Support for **256-colors** is added if you don't have **true colors**.

### Changed

- Multiple enhancements were made to the interface colors for consistency.
- Color groups were also defined to improve syntax. And the **yellow was removed** from there!

## [1.0.0] - 2021-09-25

- Initial release

<p align="center">With 💖 from <strong>LATAM</strong> to the world!</p>
