# deep-space.vim
A dark, intergalactically friendly color scheme based off of [Hybrid](https://github.com/w0ng/vim-hybrid).

Designed for GUI Vim and true color enabled terminals, but can fallback to 256 colors if needed.

![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/screenshots/screenshot.png)
The font used in the screenshot is [Input Mono](http://input.fontbureau.com).

## Installation
Install this color scheme using your preferred Vim package manager, or directly download this repo to `~/.vim/colors`.

Then add:
```vim
set background=dark
colorscheme deep-space
```

### Italics
To enable italics:
```vim
let g:deepspace_italics = 1
```

### Vim Airline
![airline](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/screenshots/airline.png)

To enable the included [vim-airline](https://github.com/vim-airline/vim-airline) theme:
```vim
let g:airline_theme='deep_space'
```

### True color support
**NOTE:** For best results, a terminal emulator that supports true color is necessary!

Depending on your version of Vim/Neovim, enter the following:

**For Neovim 0.1.3 and 0.1.4**
```vim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
```

**For Neovim 0.1.5+ and Vim 7.4.1799+**
```vim
if (has("termguicolors"))
    set termguicolors
endif
```

Copyright © TyrannicalToucan. MIT Licensed
