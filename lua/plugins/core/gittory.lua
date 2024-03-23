local M = {
  "IsWladi/Gittory",
  branch = "main",
  dependencies = {
    { "rcarriga/nvim-notify" },
  },
}

function M.config()
  require("gittory").setup()
end

return M
