return {
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup {}
    end
  },
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   config = function()
  --     require("colorizer").setup {}
  --   end
  -- },
  {
    "mvllow/modes.nvim",
    tag = 'v0.2.0',
    config = function()
      require('modes').setup()
    end
  },
  {
    "uga-rosa/ccc.nvim",
    opts = {
      highlighter = { auto_enable = false},
    },
  },
  -- {
  --   "edluffy/hologram.nvim",
  --   config = function()
  --     require("hologram").setup {
  --       auto_display = true,
  --     }
  --   end
  -- },markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
