local M = {
  "pmizio/typescript-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig",
  },
  event = "VeryLazy",
}

function M.config()
  local api = require "typescript-tools.api"
  require("typescript-tools").setup {
    settings = {
      tsserver_plugins = {
        "@styled/typescript-styled-plugin",
      },
    },
    handlers = {
      ["textDocument/formatting"] = function() end,
    },
  }
end

return M
