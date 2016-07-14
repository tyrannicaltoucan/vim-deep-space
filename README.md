# deep-space.vim
A dark color scheme based off of [Hybrid](https://github.com/w0ng/vim-hybrid).

Designed primarily for GUI Vim and 24-bit ('true-color') terminals, but will fallback to 256 colors if necessary.

**MacVim**
![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/images/css.png)
![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/images/viml.png)
**iTerm2**
![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/images/git-iterm2.png)
*The font used in these screenshots is [Input Mono](http://input.fontbureau.com).*

## Installation
Install this color scheme using your preferred Vim package manager, or directly download this repo to `~/.vim/colors`.

Then add the following to your `.vimrc`:
```vim
set background=dark
colorscheme deep-space
```

## Options
### Italics
If your terminal supports italics you can enter this into your `.vimrc`:
```vim
let g:deepspace_italics = 1 " Enable terminal italics
```

### Vim Airline
A theme for [vim-airline](https://github.com/vim-airline/vim-airline) is included with this color scheme. To use it, add the following line to your `.vimrc`:
```vim
let g:airline_theme='deep_space'
```

### True color support
If your terminal supports true colors, add this to your `.vimrc`:
```vim
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check.
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4
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

© 2016 tyrannicaltoucan under the MIT License
