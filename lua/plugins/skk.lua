return {
  {
    'vim-skk/skkeleton',
    enabled = true,
    event = { 'InsertEnter', 'CmdlineEnter' },
    cmd = { 'Telescope' },
    -- dependencies = { 'vim-denops/denops.vim', 'rcarriga/nvim-notify', 'yukiyano/denops-lazy.nvim' },
    dependencies = { 'vim-denops/denops.vim', 'rcarriga/nvim-notify' },
    config = function()
      -- require('denops-lazy').load('skkeleton', {wait_load = false})
      vim.keymap.set({ 'i', 't' }, '<F29>', '<Plug>(skkeleton-toggle)', { remap = true })
      vim.keymap.set({ 'i', 't' }, '<C-F5>', '<Plug>(skkeleton-toggle)', { remap = true })
      vim.fn['skkeleton#config']({
        -- debug = false,
        eggLikeNewline = true,
        -- keepMode = true,
        keepState = true,
        globalDictionaries = {
          '~/.skk/SKK-JISYO.L',
          -- '~/.skk/SKK-JISYO.propernoun',
          -- '~/.skk/SKK-JISYO.law',
          -- '~/.skk/SKK-JISYO.zipcode',
          -- { '~/.skk/skk-jisyo.utf8', 'utf8' },
        },
        globalKanaTableFiles = {
          { '~/.skk/azik_us.rule', 'utf-8' },
        },
        -- userDictionary = '~/.skk/skkeleton.txt',
        userJisyo = '~/.skk/skkeleton.txt',
      })
      vim.fn['skkeleton#register_keymap']('input', 'Q', 'katakana');
      -- vim.fn['skkeleton#register_keymap']('input', 'W', 'hankatakana');
      vim.fn['skkeleton#register_keymap']('input', '@', 'zenkaku');
      vim.fn['skkeleton#register_keymap']('input', ' ', 'henkanPoint');
      vim.fn['skkeleton#register_keymap']('input', ';', 'henkanFirst');
      vim.fn['skkeleton#register_keymap']('henkan', ' ', 'henkanInput');
      -- vim.fn['skkeleton#register_keymap']('henkan', 'Q', 'katakana');
      vim.fn['skkeleton#register_keymap']('henkan', 'J', 'henkanForward');
      vim.fn['skkeleton#register_keymap']('henkan', 'K', 'henkanBackward');
    end
  },
  {
    'delphinus/skkeleton_indicator.nvim',
    event = { 'InsertEnter', 'CmdlineEnter' },
    cmd = { 'Telescope' },
    config = function()
      require('skkeleton_indicator').setup({})
    end
  }
}
