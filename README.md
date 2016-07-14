# deep-space.vim
A dark color scheme based off of [Hybrid](https://github.com/w0ng/vim-hybrid).
Designed primarily for GUI Vim and 24-bit ('true-color') terminals, but will fallback to 256 colors if necessary.

![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/images/css.png)
![screenshot](https://raw.githubusercontent.com/tyrannicaltoucan/vim-deep-space/master/images/viml.png)

*MacVim with Input Mono. The font can be found [here](http://input.fontbureau.com).*

I also made Deep Space for [Atom](https://atom.io). You can find it [here](https://github.com/tyrannicaltoucan/deep-space-syntax).

## Installation
Install this color scheme using your preferred Vim package manager, or directly download this repo to `~/.vim/colors`.

Then add the following to your `.vimrc`:
```vim
set background=dark
colorscheme deep-space
```

## Options
#### Italics
If your terminal supports italics you can enter this into your `.vimrc`:
```
let g:deepspace_italics = 1 " Enable terminal italics
```

#### Vim Airline
A theme for [vim-airline](https://github.com/vim-airline/vim-airline) is included with this color scheme. To use it, add the following line to your `.vimrc`:
```vim
let g:airline_theme='deep_space'
```

#### True color support
If your terminal supports true colors, add this to your `vimrc`:
```vim
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
```
*Tested on a Mac with Neovim 0.1.4 and Vim 7.4.1993*

---
© 2016 tyrannicaltoucan under the MIT License
