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
    },
    -- config = function()
    --   vim.lsp.inlay_hint.enable()
    --   vim.cmd [[
    --   hi LspInlayHint guibg=Gray guifg=Black
    -- ]]
    -- end
  }
}
