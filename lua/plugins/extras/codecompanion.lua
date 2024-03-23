local M = {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    {
      "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
      opts = {},
    },
  },
}

function M.config()
  require("codecompanion").setup {
    adapters = {
      chat = require("codecompanion.adapters").use("openai", {
        env = {
          api_key = "OPENAI_API_KEY",
        },
      }),
      inline = require("codecompanion.adapters").use("openai", {
        env = {
          api_key = "OPENAI_API_KEY",
        },
      }),
    },
  }
end

return M
