return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  lazy = false, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
  -- tag = "*",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.journal"] = {
          config = {
            workspace = "notes"
          }
        }, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
        ["core.integrations.telescope"] = {},
          ["core.completion"] = {
          config = {
            engine = "nvim-cmp"
          },
        },
      },
    }

    local neorg_callbacks = require("neorg.core.callbacks")
    ---@diagnostic disable-next-line: missing-parameter
    neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
      -- Map all the below keybinds only when the "norg" mode is active
      keybinds.map_event_to_mode("norg", {
        n = { -- Bind keys in normal mode
          { "<localleader>fl", "core.integrations.telescope.find_linkable" },
          -- ...
        },
        i = { -- Bind in insert mode
          { "<localleader>lf", "core.integrations.telescope.insert_file_link" },
        },
      }, {
          silent = true,
          noremap = true,
        })
    end)

  end,

}
