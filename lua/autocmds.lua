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

cmd('FileType', {
  pattern = 'dap-repl',
  command = 'lua require("dap.ext.autocompl").attach()',
})

cmd('FileType', {
  pattern = 'go',
  command = 'nnoremap <buffer> <Cmd> lua require("dap-go").debug_test()<CR>',
})

cmd('FileType', {
  pattern = 'python',
  command = 'nnoremap <buffer> <Cmd> lua require("dap-python").test_method()<CR>',
})
