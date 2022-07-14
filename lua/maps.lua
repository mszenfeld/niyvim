local map = vim.api.nvim_set_keymap
local gs = package.loaded.gitsigns

-- Windows resizing

map('n', '<Leader>+', ':exe "vertical resize " . (winwidth(0) * 3/2)<CR>', { noremap = true, silent = true }) 
map('n', '<Leader>-', ':exe "vertical resize " . (winwidth(0) * 2/3)<CR>', { noremap = true, silent = true }) 

-- Neo-tree

map('n', '<C-f>', ':Neotree action=focus reveal=true<CR>', { noremap = true, silent = true })
map('n', '<C-p>', ':Neotree float buffers<CR>', { noremap = true, silent = true }) 

-- Aerial

map('n', '<Leader>a', ':AerialToggle<CR>', { silent = true })

-- Telescope

map('n', '<Leader>fi', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>rg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- Sessions

map('n', '<Leader>ss', ':SessionSave<CR>', { silent = true })
map('n', '<Leader>sl', ':SessionLoad<CR>', { silent = true })

-- Tests

map('n', '<Space>tn', '<cmd> lua require("neotest").run.run()<CR>', { silent = true, noremap = true })
map('n', '<Space>tf', '<cmd> lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { silent = true, noremap = true })
map('n', '<leader>ts', '<cmd> lua require("neotest").summary.toggle()<CR>', { silent = true, noremap = true })

-- Git

map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { silent = true })
map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { silent = true })
map('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', { silent = true })

-- WhichKey

map('n', '<Space>?', ':WhichKey<CR>', { silent = true })
