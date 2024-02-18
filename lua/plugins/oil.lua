return {
  "stevearc/oil.nvim",
  -- config = function()
  -- 	require("oil").setup({
  -- 	})
  -- end,
  opts = {
    buf_options = {
      bufhidden = "wipe",
    },
    win_options = {
      -- cursorcolumn = true,
      signcolumn = "number",
      -- signcolumn = "no",
    },
    view_options = {
      show_hidden = true,
    },

  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  dependencies = { "nvim-tree/nvim-web-devicons", "SirZenith/oil-vcs-status" },
}
