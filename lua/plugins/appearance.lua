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
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        -- theme = 'light',
        close_on_bdelete = false,
        app = 'browser',
      })
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        -- dir_path = "content/Attachments",
        -- relative_to_current_file = true,
      },
      filetypes = {
        markdown = {
          template = "![$CURSOR]($FILE_NAME)",
        },
        typst = {
          template = [[
#figure(
  image("$FILE_PATH", width: 100%),
  caption: [$CURSOR],
) <fig-$LABEL>
    ]], ---@type string | fun(context: table): string
        },
      },
    },
    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
  }
}
