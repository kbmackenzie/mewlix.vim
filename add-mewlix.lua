-- Mewlix syntax highlighting for all *.mews files:
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.mews',
  command = 'set filetype=mewlix',
})
