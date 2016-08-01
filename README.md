# deep-space.vim
An intergalactically friendly color scheme loosely based off of [Hybrid]("https://github.com/w0ng/vim-hybrid"). Designed for GUI Vim and 24-bit ('true-color') terminals, but can fallback to 256 colors if necessary.

![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/screenshot.png)

## Installation
Install this color scheme using your preferred Vim package manager, or directly download this repo to `~/.vim/colors`.

Then add the following to your `.vimrc`:
```vim
set background=dark
colorscheme deep-space
```

### Italics
If your terminal supports italics you can enter this into your `.vimrc`:
```vim
let g:deepspace_italics = 1
```

### Vim Airline
To use the [vim-airline](https://github.com/vim-airline/vim-airline) theme, add the following line to your `.vimrc`:
```vim
let g:airline_theme='deep_space'
```

### True color support
If your terminal emulator supports true colors, add this to your `.vimrc`:
```vim
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, remove the outermost $TMUX check.
if (empty($TMUX))
    "For Neovim 0.1.3 and 0.1.4
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    "For Neovim 0.1.5+ and Vim 7.4.1799+
    if (has("termguicolors"))
        set termguicolors
    endif
endif
```
*Tested on macOS 10.11 with Neovim 0.1.4, Neovim 0.1.5 and Vim 7.4.1993*

---
I also made Deep Space for [Atom](https://atom.io). You can find it [here](https://github.com/tyrannicaltoucan/deep-space-syntax).

The font used in the screenshot is Input Mono. Get it [here](http://input.fontbureau.com).

```
Copyright (c) 2016 tyrannicaltoucan.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to
deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
