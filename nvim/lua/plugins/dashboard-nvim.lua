return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom', -- Change the theme if you want (optional)
      config = {
        header = {
          '',
            '          ',
            '     ██╗ ██████╗ ███████╗██╗    ██╗   ██╗██╗███╗   ███╗',
            '     ██║██╔═══██╗██╔════╝██║    ██║   ██║██║████╗ ████║',
            '     ██║██║   ██║█████╗  ██║    ██║   ██║██║██╔████╔██║',
            '██   ██║██║   ██║██╔══╝  ██║    ╚██╗ ██╔╝██║██║╚██╔╝██║',
            '╚█████╔╝╚██████╔╝███████╗███████╗╚████╔╝ ██║██║ ╚═╝ ██║',
            ' ╚════╝  ╚═════╝ ╚══════╝╚══════╝ ╚═══╝  ╚═╝╚═╝     ╚═╝',
          '',
          '            [ Neovim Dashboard ]           ',
        },
        center = {
          {
            icon = "  ",
            desc = "New Buffer           ",
            action = "enew",
            shortcut = "SPC b n",
          },
          {
            icon = '  ',
            desc = 'Last Session',
            action = 'lua require("persistence").load()',
            shortcut = 'SPC s l',
          },
          {
            icon = '  ',
            desc = 'Recently opened files                   ',
            action = 'Telescope oldfiles',
            shortcut = 'SPC f h',
          },
          {
            icon = '  ',
            desc = 'Find file                               ',
            action = 'Telescope find_files',
            shortcut = 'SPC f f',
          },
          {
            icon = '  ',
            desc = 'File Browser                            ',
            action = 'Neotree toggle',
            shortcut = 'SPC e',
          },
          {
            icon = '  ',
            desc = 'Find word                               ',
            action = 'Telescope live_grep',
            shortcut = 'SPC f g',
          },
        },
        footer = {'', ''}
      },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

