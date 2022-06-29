local map = vim.api.nvim_set_keymap
local gs = package.loaded.gitsigns

map('i', 'jj', '<Esc>', {})
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

-- Neo-tree

map('n', '<C-f>', ':Neotree action=focus<CR>', { noremap = true, silent = true })
map('n', '<C-p>', ':Neotree float buffers<CR>', { noremap = true, silent = true }) 

-- Aerial

map('n', '<Leader>a', ':AerialOpen<CR>', { silent = true })

-- Telescope

map('n', '<Leader>fi', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>rg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- Tests

map('n', '<Space>tn', ':TestNearest<CR>', { silent = true })
map('n', '<Space>tf', ':TestFile<CR>', { silent = true })
map('n', '<Space>tl', ':TestLast<CR>', { silent = true })

-- Git

map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { silent = true })
map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { silent = true })
map('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', { silent = true })
