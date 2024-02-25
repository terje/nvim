local M = {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,
}

function M.config()
  require("kanagawa").setup {
    theme = "wave",
    background = {
      dark = "wave",
    },
  }
  vim.cmd.colorscheme "kanagawa"
end

return M
