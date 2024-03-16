A [mewlix](https://github.com/KBMackenzie/mewlix) syntax highlighting script for Vim.

## Installation
After copying the `mewlix.vim` script to the [Vim syntax folder](https://vimdoc.sourceforge.net/htmldoc/syntax.html#mysyntaxfile), add one of of the following snippets to your configuration:

### Vimscript
Paste this Vimscript snippet in your `.vimrc`:
```vim
" Mewlix syntax highlighting for all *.mews files:
autocmd BufNewFile,BufRead *.mews set filetype=mewlix
```

### Neovim Lua
In Neovim, you can use the following Lua snippet:
```lua
-- Mewlix syntax highlighting for all *.mews files:
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.mews',
  command = 'set filetype=mewlix',
})
```
