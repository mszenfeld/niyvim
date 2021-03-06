local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
  
return require('packer').startup(function(use)
  -- Utils
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  }
  use {
    'glepnir/dashboard-nvim',
    config = function()
      require('configs.dashboard').config()
    end
  }
  use {
    'folke/which-key.nvim',
    config = function()
      require('which-key').setup()
    end
  }

  -- GUI
  use 'kyazdani42/nvim-web-devicons'
  use 'arcticicestudio/nord-vim'
  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('configs.neoscroll').config()
    end
  }

  -- Navigation
  use 'nvim-telescope/telescope.nvim'
  use {
    'stevearc/aerial.nvim',
    config = function()
      require('configs.aerial').config()
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    config = function ()
      require('configs.lualine').config()
    end
  }
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require('configs.neo-tree').config()
    end
  }

  -- Development
  use 'othree/html5.vim'
  use 'evanleck/vim-svelte'
  use 'pangloss/vim-javascript'
  use 'HerringtonDarkholme/yats.vim'
  use 'fatih/vim-go'
  use 'Vimjas/vim-python-pep8-indent'
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('configs.treesitter').config()
    end
  }
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require('configs.toggleterm').config()
    end
  }
  use 'tpope/vim-dispatch'
  use 'vim-test/vim-test'
  use 'mattn/emmet-vim'
  use 'github/copilot.vim'

  -- LSP
  use {
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
  }
  use {
    'CosmicNvim/cosmic-ui',
    requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      require('cosmic-ui').setup()
    end,
  }
  
  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release',
    config = function()
      require('configs.gitsigns').config()
    end
  }
  use 'tpope/vim-fugitive'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
