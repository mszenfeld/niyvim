local M = {}

function M.config()
  local db = require('dashboard')
  
  db.default_executive = 'telescope'
  db.session_directory = '.session'

  db.custom_header = {
    '',
    '',
    '',
    '',
    '',
    ' _       _________                  _________ _______ ', 
    [[( (    /|\__   __/|\     /||\     /|\__   __/(       )]],
    [[|  \  ( |   ) (   ( \   / )| )   ( |   ) (   | () () |]],
    [[|   \ | |   | |    \ (_) / | |   | |   | |   | || || |]],
    [[| (\ \) |   | |     \   /  ( (   ) )   | |   | |(_)| |]],
    [[| | \   |   | |      ) (    \ \_/ /    | |   | |   | |]],
    [[| )  \  |___) (___   | |     \   /  ___) (___| )   ( |]],
    [[|/    )_)\_______/   \_/      \_/   \_______/|/     \|]],
    '',
    '',
    '',
  } 
  db.custom_center = {
    {
      icon = '  ',
      desc = 'New File                                ',
      shortcut = '<space>e  ',
      action = 'DashboardNewFile',
    },
    {
      icon = '  ',
      desc = 'Open Last Session                       ',
      shortcut = '<leader>sl',
      action = 'SessionLoad',
    },
    {
      icon = '  ',
      desc = 'File Manager                            ',
      shortcut = '<c-f>     ',
      action = 'Neotree float'
    },
    {
      icon = '  ',
      desc = 'Find File                               ',
      shortcut = '<leader>fi',
      action = 'Telescope find_files',
    },
    {
      icon = '  ',
      desc = 'Find Word                               ',
      shortcut = '<leader>rg',
      action = 'Telescope live_grep',
    },
  }
end

return M
