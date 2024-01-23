return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  -- tag = "*",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          }
        },
        ["core.concealer"] = {},     -- Adds pretty icons to your documents
        -- ["core.ui"] = {},          -- Add calendar integration
        ["core.ui.calendar"] = {},   -- Add calendar integration
        ["core.ui.text_popup"] = {}, -- Add calendar integration
        ["core.dirman"] = {          -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
        ["core.syntax"] = {},
        ["core.integrations.telescope"] = {},
        ["core.keybinds"] = {
          config = {
            hook = function(keybinds)
              -- open today's notes
              keybinds.map("norg", "n", "<leader>tt", "<cmd>Neorg journal today<CR>", { desc = "Open today's notes" })
              -- insert current clock and linebreak, and execute <C-i>
              keybinds.map("norg", "n", "<leader>dd", ":put =strftime('%H:%M')<CR>==o",
                -- keybinds.map("norg", "n", "<leader>dd", "o<C-R>=strftime('%H:%M')<CR>",
                { desc = "Insert current time" })
              keybinds.remap("norg", "i", "<C-t>", "<CR><C-R>=strftime('%H:%M')<CR><CR>",
                { desc = "Insert current time" })
            end,
          }
        }
      },
    }
    local neorg_callbacks = require("neorg.core.callbacks")

    neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
      -- Map all the below keybinds only when the "norg" mode is active
      keybinds.map_event_to_mode("norg", {
        n = { -- Bind keys in normal mode
          { "<C-s>", "core.integrations.telescope.find_linkable" },
        },

        i = { -- Bind in insert mode
          { "<C-l>", "core.integrations.telescope.insert_link" },
        },
      }, {
        silent = true,
        noremap = true,
      })
    end)
  end,
}
