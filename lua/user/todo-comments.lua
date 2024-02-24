local M = {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}

function M.config()
  require("todo-comments").setup {}

  local wk = require "which-key"
  wk.register {
    -- ["<leader>ct"] = { "<cmd>TodoTrouble<cr>", "Toggle Trouble" },
  }
end

return M
