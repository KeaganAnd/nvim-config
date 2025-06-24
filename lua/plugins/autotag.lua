return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  opts = {}, -- only needed if you're using Lazy's opts table
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}