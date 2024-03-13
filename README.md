A [mewlix](https://github.com/KBMackenzie/mewlix) syntax highlighting script for Vim.

## Installation
After copying the `mewlix.vim` script to the [Vim syntax folder](https://vi.stackexchange.com/a/10815), add one of of the following snippets to your configuration:

### Vimscript
Paste this Vimscript snippet in your `.vimrc`:
```vim
" Mewlix syntax highlighting for all *.mews files:
autocmd BufNewFile,BufRead *.mews set filetype=mewlix

" YAML syntax highlighting for all *.mewlix files:
autocmd BufNewFile,BufRead *.mewlix set filetype=yaml
```

### Neovim Lua
In Neovim, you can use the following Lua snippet:
```lua
-- Mewlix syntax highlighting for all *.mews files:
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.mews',
  command = 'set filetype=mewlix',
})

-- YAML syntax highlighting for all *.mewlix files:
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.mewlix',
  command = 'set filetype=yaml',
})
```
