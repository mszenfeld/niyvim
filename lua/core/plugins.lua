local M = {}
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

local default = {
  { 'tpope/vim-commentary' },
  { 'tpope/vim-surround' },
  { 'max397574/better-escape.nvim', config = function() require('better_escape').setup() end },
  { 'glepnir/dashboard-nvim', config = function() require('configs.dashboard').config() end },
  { 'folke/which-key.nvim', config = function() require('which-key').setup() end },
  { 'kyazdani42/nvim-web-devicons' },
  { 'arcticicestudio/nord-vim' },
  { 'karb94/neoscroll.nvim', config = function() require('configs.neoscroll').config() end },
  { 'nvim-telescope/telescope.nvim' },
  { 'stevearc/aerial.nvim', config = function() require('configs.aerial').config() end },
}


function M.load ()
  if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  end

  return require('packer').startup(function(use)
    -- Load default plugins
    for _, data in ipairs(default) do
      use(data)
    end

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end)
end

return M
