local M = {
  "dmmulroy/tsc.nvim",
}

function M.config()
  require("tsc").setup {
    flags = {
      build = true,
    },
  }
end

return M
