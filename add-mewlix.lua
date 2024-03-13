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
