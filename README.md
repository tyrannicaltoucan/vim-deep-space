# Deep Space
A dark, intergalactically friendly color scheme based off of [Hybrid](https://github.com/w0ng/vim-hybrid).

![screenshot](http://i.imgur.com/Q86eL6v.png)
The font used in the screenshot is [Input Mono](http://input.fontbureau.com).

## Installation
Install this color scheme using your preferred Vim plugin manager, or directly download this repo to `~/.vim/colors`.

Then add:
```vim
set background=dark
colorscheme deep-space
```

If your terminal supports true colors, add:
###### For Vim 8.0+ and Neovim 0.1.5+
```vim
if has("termguicolors")
    set termguicolors
endif
```

###### For Neovim 0.1.3 and 0.1.4
```vim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
```

### Options
If your terminal supports italics, add:
```vim
let g:deepspace_italics = 1
```

To use the included [vim-airline](https://github.com/vim-airline/vim-airline) theme:
```vim
let g:airline_theme='deep_space'
```

---
Copyright © 2016 Brandon Siders. Released under the MIT License.
