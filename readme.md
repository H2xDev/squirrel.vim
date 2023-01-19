# Squirrel.vim
Extended syntax highlighting for squirrel language for vim  
Original maintainer: YASUHIRO.Kanda <yasuhiro.kanda@gmail.com>

This is a mirror of http://www.vim.org/scripts/script.php?script_id=2655  

syntax file for Squirrel (http://squirrel-lang.org/default.aspx)  

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
