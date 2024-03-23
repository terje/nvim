local M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  lazy = false, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
  -- tag = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  require("neorg").setup {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
      ["core.integrations.nvim-cmp"] = {},
      ["core.keybinds"] = {
        -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
        config = {
          default_keybinds = true,
          neorg_leader = "<Leader><Leader>",
        },
      },
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "/Users/terje/Documents/Notes",
          },
        },
      },
    },
  }
end

return M
