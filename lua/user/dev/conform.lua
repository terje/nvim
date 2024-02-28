local M = {
  "stevearc/conform.nvim",
  opts = {},
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>cf"] = {
      function()
        require("conform").format()
      end,
      "Format",
    },
  }

  require("conform").setup {
    log_level = vim.log.levels.DEBUG,
    formatters_by_ft = {
      typescriptreact = { "eslint_d" },
      typescript = { "eslint_d" },
      json = { "fixjson" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 1000,
      lsp_fallback = true,
    },
  }
end

return M
