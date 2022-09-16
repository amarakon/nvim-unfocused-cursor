Neovim Unfocused Cursor
================

## Contents

-   <a href="#installation" id="toc-installation">Installation</a>
    -   <a href="#vim-plug" id="toc-vim-plug">Vim Plug</a>
    -   <a href="#neovim" id="toc-neovim">Neovim</a>
-   <a href="#setup" id="toc-setup">Setup</a>

This plugin simply hides the cursor and cursor column when the window is
not focused. This makes more sense than the default behaviour because
you will not need to move the cursor if you are not on the window, let
alone see it.

## Installation

### Vim Plug

``` vim
Plug "amarakon/nvim-lua-script"
```

### Neovim

``` sh
`# user` git clone https://github.com/amarakon/nvim-sensible ~/.local/share/nvim/site/pack/default/start/nvim-sensible
```

## Setup

In order to use this plugin, you need to run the `setup` function. If
you are doing this in Vim Script instead of Lua, put `lua` in front of
the following code.

``` lua
require("unfocused-cursor").setup()
```
