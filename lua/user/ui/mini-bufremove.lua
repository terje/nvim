local M = {
  "echasnovski/mini.bufremove",
}

function M.config()
  local wk = require("which-key")
  wk.register {
    ["<leader>bd"] = { function() require("mini.bufremove").delete(0) end, "Delete buffer" },
    ["<leader>bD"] = { function() require("mini.bufremove").delete(0, true) end, "Delete buffer (Force)" },
  }
  require("mini.bufremove").setup()
end

return M
