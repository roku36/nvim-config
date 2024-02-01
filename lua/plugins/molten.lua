-- vim.g.python3_host_prog = "/home/roku/.rye/py/cpython@3.10.13/install/bin/python3"
vim.g.python3_host_prog = "/Users/roku/lab/jaaaax/.venv/bin/python3.11"

return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
      -- this is an example, not a default. Please see the readme for more configuration options
      vim.g.molten_output_win_max_height = 12
      -- vim.g.python3_host_prog = '/home/roku/.rye/shims/python3'
      -- vim.g.python3_host_prog = '/Users/roku/lab/jaaaax/.venv/bin/python3'
      -- vim.g.python3_host_prog = "/Users/roku/lab/marljax/.venv/bin/python"

      vim.keymap.set("n", "<localleader><localleader>mi", ":MoltenInit<CR>")
      vim.keymap.set("n", "<localleader><localleader>me", ":MoltenEvaluateOperator<CR>")
      vim.keymap.set("n", "<localleader><localleader>mr", ":MoltenReevaluateCell<CR>")
      vim.keymap.set("v", "<localleader><localleader>mv", ":<C-u>MoltenEvaluateVisual<CR>gv")
      vim.keymap.set("n", "<localleader><localleader>ms", ":noautocmd MoltenEnterOutput<CR>")
      vim.keymap.set("n", "<localleader><localleader>mh", ":MoltenHideOutput<CR>")
      vim.keymap.set("n", "<localleader><localleader>md", ":MoltenDelete<CR>")
    end,
  },
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    lazy = false,
    -- Depending on your nvim distro or config you may need to make the loading not lazy
    -- lazy=false,
  }
}
