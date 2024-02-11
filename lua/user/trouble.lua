local M = {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
 },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>ct"] = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
  }
end

return M
