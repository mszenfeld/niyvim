local M = {}

function M.config()
  require('neoscroll').setup({
    mappings = {'<C-u>', '<C-d>', '<C-b>', 'gg', 'G',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
  })
end

return M
