local M = {
  "dmmulroy/ts-error-translator.nvim",
}

function M.config()
  require("ts-error-translator").setup()
end

return M
