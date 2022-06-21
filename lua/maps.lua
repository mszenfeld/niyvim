local map = vim.api.nvim_set_keymap
local gs = package.loaded.gitsigns

map('i', 'ii', '<Esc>', {})
map('n', '<space>', 'za', { noremap = true })
map('v', '<space>', 'zf', { noremap = true })
map('n', '<leader>fo', '<Cmd> lua require("functions").toggle_fold()<CR>', { silent = true })

-- Windows switching

map('n', '<C-h>', ':wincmd h<CR>', { silent = true })
map('n', '<C-j>', ':wincmd j<CR>', { silent = true })
map('n', '<C-k>', ':wincmd k<CR>', { silent = true })
map('n', '<C-l>', ':wincmd l<CR>', { silent = true })

-- Windows resizing

map('n', '<Leader>+', ':exe "vertical resize " . (winwidth(0) * 3/2)<CR>', { noremap = true, silent = true }) 
map('n', '<Leader>-', ':exe "vertical resize " . (winwidth(0) * 2/3)<CR>', { noremap = true, silent = true }) 

-- CoC mappings

map('n', 'gd', '<Plug>(coc-definition)', { silent = true })
map('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
map('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
map('n', 'gr', '<Plug>(coc-references)', { silent = true })
map('n', 'ff', '<Plug>(coc-format-selected)', { silent = true })

map('n', '<Leader>rn', '<Plug>(coc-rename)', { silent = true })
map('n', 'K', '<Cmd>lua require("functions").show_documentation()<CR>', { noremap = true, silent = true })

map('n', '<Space>l', ':<C-u>CocList diagnostics<CR>', { noremap = true, silent = true })
map('n', '<Space>e', ':<C-u>CocList extensions<CR>', { noremap = true, silent = true })
map('n', '<Space>c', ':<C-u>CocList commands<CR>', { noremap = true, silent = true })
map('n', '<Space>o', ':<C-u>CocList outline<CR>', { noremap = true, silent = true })
map('n', '<Space>f', ':CocFix<CR>', { noremap = true, silent = true })
map('n', '<Space>h', ':call CocAction("doHover")<CR>', { noremap = true, silent = true })

-- Neo-tree

map('n', '<C-f>', ':Neotree action=focus<CR>', { noremap = true, silent = true })
map('n', '<C-t>', ':Neotree action=toggle<CR>', { noremap = true, silent = true })
map('n', '<C-p>', ':Neotree float buffers<CR>', { noremap = true, silent = true }) 


-- Aerial

map('n', '<Leader>a', ':AerialOpen<CR>', { silent = true })

-- Telescope

map('n', '<Leader>fi', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>rg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- Tests

map('n', '<Leader><F1>', ':TestNearest<CR>', { silent = true })
map('n', '<Leader><F2>', ':TestFile<CR>', { silent = true })
map('n', '<Leader><F3>', ':TestLast<CR>', { silent = true })

-- Git

map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { silent = true })
map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { silent = true })
map('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', { silent = true })
