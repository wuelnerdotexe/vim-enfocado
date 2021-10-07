![VIM ENFOCADO](https://i.imgur.com/8um4BUj.png)

## 🧠 **Philosophy.**

> _"I decided to create this theme, because all the themes I had used were built to be attractive, but not entirely useful. This is how **ENFOCADO** was born, the theme that focuses only on what is important for programmers, the code and nothing else, because that is **how the themes should be**."_

## ✨ **Features.**

- Focused on **coding** and nothing more than **coding**.
- Human writing (italicized) is simulated for syntax groups (Booleans, Comments, Methods, Titles, and more...) that are usually written with **human language**, (feature available only with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) installed).
- The important colors (Orange & Red) are reserved for **important alerts only**, as they should be.
- Use of **only three** nature-inspired colors (Blue, Cyan, & Green) for syntax highlighting.
- Use of **well-founded CIELAB** Selenized black color scheme. Learn about its features and design [here](https://github.com/jan-warchol/selenized/blob/master/features-and-design.md).
- What is not important, is Black & White, **truly minimalist**.

### **Statusline themes.**

- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
- [vim-airline](https://github.com/vim-airline/vim-airline)

## ⚡️ **Requirements.**

- [Vim](https://www.vim.org/) / [Neovim](https://neovim.io/) with **true colors** (termguicolors) or **256-colors** (t_Co=256) support.

## 📦 **Installation.**

Install the theme with your preferred package manager. With [vim-plug](https://github.com/junegunn/vim-plug), for example:

```vim
" Stable version.
Plug 'wuelnerdotexe/vim-enfocado'

" Development version.
Plug 'wuelnerdotexe/vim-enfocado', { 'branch': 'development' }
```

## 🚀 **Usage.**

Enable the statusline theme:

```vim
" Airline.
let g:airline_theme = "enfocado"

" Lightline.
let g:lightline = {
      \ 'colorscheme': 'enfocado',
      \ }

" Lualine.
options = {theme = 'enfocado'}
```

Enable the colorscheme:

```vim
" First, if you have true colors support, enable it.
set termguicolors

" Otherwise, enable 256 colors.
set t_Co=256

" Then activate the enfocado theme.
autocmd VimEnter * ++nested colorscheme enfocado
```

## 😎 **Recommendations.**

In order for the human text simulation to work as it should (in addition to installing [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)), I recommend that you use either of these two beautiful fonts with the **"Mankind and Machine"** concept.

- [IBM Plex Mono](https://www.ibm.com/plex/).
- [Victor Mono](https://rubjo.github.io/victor-mono/).

## 🔥 **Contributing.**

The official **Enfocado Theme** for [Visual Studio Code](https://code.visualstudio.com/) is coming soon. It is currently in development [here](https://github.com/wuelnerdotexe/vscode-enfocado). Wait for it! 🤩

Let me see your captures and know what you think with the hashtag **#HowTheThemesShouldBe**. 👀

And of course, if you want to motivate me to constantly improve this theme, your donations are welcome at [PayPal](https://paypal.me/wuelnerdotexe). 👉👈

All your ideas and suggestions are welcome! 🙌

## 🙏 **Credits.**

- Theme colorscheme by [Jan Warchol](https://github.com/jan-warchol) on [Github](https://github.com/jan-warchol/selenized/blob/master/the-values.md)
- Screenshot wallpaper by [Andreas Gücklhorn](https://unsplash.com/@draufsicht?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/nature?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)

<p align="center">Copyright &copy; 2021 <a href="mailto:wuelnerdotexe@gmail.com" target="_blank">Wuelner Martínez</a>.<br />
Con 💚 de <b>Latinoamérica</b> para el mundo.</p>

<p align="center"><a href="https://github.com/wuelnerdotexe/vim-enfocado/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=flat-square&label=License&message=MIT&logo=github"/></a></p>
