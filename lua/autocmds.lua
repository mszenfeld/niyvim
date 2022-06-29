local cmd = vim.api.nvim_create_autocmd

cmd('FileType', {
  desc = 'Disable wrapping for markdown files',
  pattern = 'markdown',
  command = 'setlocal wrap',
})

cmd('CursorHold', {
  desc = 'Highlight the symbol and its references when holding the cursor',
  pattern = '*',
  command = 'lua vim.diagnostic.open_float(nil, { scope = "line" })',
})
