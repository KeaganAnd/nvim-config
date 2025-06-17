return{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = {
        week_header = {
          enable = true--boolean use a week header
          --concat  --concat string after time string line
          --append  --table append after time string line
        },
        shortcut = {
        -- action can be a function type
        { desc = "Open File Tree", group = 'DashboardOrange', key = 'f', action = function() vim.cmd('NvimTreeToggle') end },
        },
        packages = { enable = true }, -- show how many plugins neovim loaded
        -- limit how many projects list, action when you press key or enter it will run this action.
        -- action can be a function type, e.g.
        -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
        project = { enable = false, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
        mru = { enable = true, limit = 10, icon = '', label = ' Recent Files', cwd_only = false },
        footer = {}, -- footer
        }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}