return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'hyper',
      config = {
        header = {
          [[  ,-.       _,---._ __  / \  ]],
          [[ /  )    .-'       `./ /   \ ]],
          [[(  (   ,'            `/    /|]],
          [[ \  `-"             \'\   / |]],
          [[  `.              ,  \ \ /  |]],
          [[   /`.          ,'-`----Y   |]],
          [[  (            ;        |   ']],
          [[  |  ,-.    ,-'         |  / ]],
          [[  |  | (   |     Maggie | /  ]],
          [[  )  |  \  `.___________|/   ]],
          [[  `--'   `--'                ]],
          ' ________   _______   ________  ___      ___ ___  _____ ______      ',
          [[|\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \    ]],
          [[\ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \   ]],
          [[ \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \  ]],
          [[  \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \ ]],
          [[   \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\]],
          [[    \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|]],
              ''
        },
        disable_move, -- boolean default is false disable move key
        shortcut = {
        -- action can be a function type
        { desc = "Open File Tree", group = 'DashboardBlue', key = 'f', action = function() vim.cmd('NvimTreeToggle') end },
        { desc = "Quit", group = 'DashboardBlue', key = 'q', action = function() vim.cmd('q') end },
      
      },
        packages = { enable = true },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
