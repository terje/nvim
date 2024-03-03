local M = {
  "rcarriga/nvim-notify",
}

function M.config()
  local notify = require "notify"
  notify.setup {
    render = "wrapped-compact",
    max_width = 80,
  }
  vim.notify = notify
end

return M
