return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    require('cyberdream').setup({
        --variant = "default",
        --transparent = true

    })
    
    
  end
}