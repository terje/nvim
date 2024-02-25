local M = {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "kanagawa"
end

return M
