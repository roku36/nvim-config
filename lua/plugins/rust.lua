---@type RustaceanOpts
vim.g.rustaceanvim = {
  ---@type RustaceanToolsOpts
  tools = {
    ---@type RustaceanHoverActionsOpts
    hover_actions = {
      replace_builtin_hover = false,
    }
  },
}

return {
  {
    'mrcjkb/rustaceanvim',
    version = '^3', -- Recommended
    ft = { 'rust' },
    --
    keys = {
      { '<leader>rr', '<cmd>RustLsp runnables<cr>',  desc = 'Runnables' },
      --     vim.cmd.RustLsp('codeAction')
      { '<leader>ra', '<cmd>RustLsp codeAction<cr>', desc = 'Code Action' },
      { '<leader>rk', '<cmd>RustLsp hover actions<cr>', desc = 'Code Action' },
    },
    -- config = function()
    -- end
  }
}
