local M = {}

local default = {
  { 'nvim-lua/plenary.nvim' },
  { 'MunifTanjim/nui.nvim' },
  { 'tpope/vim-commentary' },
  { 'tpope/vim-surround' },
  { 'max397574/better-escape.nvim', config = function() require('better_escape').setup() end },
  { 'folke/which-key.nvim', config = function() require('which-key').setup() end },
  { 'kyazdani42/nvim-web-devicons' },
  { 'arcticicestudio/nord-vim' },
  { 'karb94/neoscroll.nvim', config = function() require('configs.neoscroll').config() end },
  { 'nvim-telescope/telescope.nvim' },
  { 'stevearc/aerial.nvim', config = function() require('configs.aerial').config() end },
  { 'nvim-lualine/lualine.nvim', config = function () require('configs.lualine').config() end },
  { 'nvim-neo-tree/neo-tree.nvim', branch = 'v2.x', config = function () require('configs.neo-tree').config() end },
  { 'nvim-treesitter/nvim-treesitter', config = function() require('configs.treesitter').config() end },
  { 'akinsho/toggleterm.nvim', config = function() require('configs.toggleterm').config() end },
  { 'tpope/vim-dispatch' },
  { 'mfussenegger/nvim-dap' },
  {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  },
  { 'CosmicNvim/cosmic-ui', config = function() require('cosmic-ui').setup() end },
  { 'lewis6991/gitsigns.nvim', config = function() require('configs.gitsigns').config() end },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-dadbod' },
  { 'kristijanhusak/vim-dadbod-ui' },
}

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end


local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  niyvim = require('config')

  -- Load default plugins
  for _, data in ipairs(default) do
    use(data)
  end

  -- Load custom plugins
  for _, data in ipairs(niyvim.plugins) do
    use(data)
  end

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
