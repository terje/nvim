local M = {
  "embark-theme/vim",
  name = "embark",
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "embark"
end

return M
