return {
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup {}
    end
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {}
    end
  },
  {
    'mvllow/modes.nvim',
    tag = 'v0.2.0',
    config = function()
      require('modes').setup()
    end
  }
}
