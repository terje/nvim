local M = {
  "pauchiner/pastelnight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

function M.config()
  vim.cmd.colorscheme "kanagawa"
end

return M
