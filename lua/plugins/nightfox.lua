return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        -- transparent = true, -- uncomment if desired
      }
    })

    vim.cmd("colorscheme duskfox")
  end,
}
