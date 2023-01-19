# Squirrel.vim
Extended syntax highlighting for squirrel language for vim  
Original author: [Yasuhiro Kanda](https://github.com/ykanda)

## Updates
- Javadoc support
- `function` hightlighted as `type` and function name highlighted as `function`

## Installation
1. Make folder `%VIMHOME%/after/syntax`
2. Copy `squrrel.vim` to `%VIMHOME%/after/syntax`
3. In .vimrc
```vim
au BufNewFile,BufRead *.nut setf squirrel
```
