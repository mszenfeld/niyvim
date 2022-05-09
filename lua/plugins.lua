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
    'karb94/neoscroll.nvim',
    config = function()
      require('configs.neoscroll').config()
    end
  }

  -- GUI
  use 'kyazdani42/nvim-web-devicons'
  use 'arcticicestudio/nord-vim'

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
  use 'numirias/semshi'
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
  use { 'neoclide/coc.nvim', branch = 'release' }
  
  -- Git
  use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release',
  config = function()
    require('configs.gitsigns').config()
  end
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
