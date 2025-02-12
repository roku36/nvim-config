return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = {
    -- open_cmd = 'open -a Min %s'
    open_cmd = 'osascript -e \'tell application "System Events" to keystroke "d" using {command down}\' && osascript -e \'tell application "System Events" to keystroke "awrit %s" & return\'',

    port = 8080,
  }
}
