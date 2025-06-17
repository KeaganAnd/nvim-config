return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup({})
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle File Tree' })

    -- Auto-close Neovim if nvim-tree is the last window
    vim.api.nvim_create_autocmd("BufEnter", {
      group = vim.api.nvim_create_augroup("NvimTreeAutoClose", { clear = true }),
      callback = function()
        if
          #vim.api.nvim_list_wins() == 1
          and vim.bo.filetype == "NvimTree"
        then
          vim.cmd("quit")
        end
      end,
    })
  end
}