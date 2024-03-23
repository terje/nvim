local M = {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  event = { "BufRead", "BufNewFile" },
}

function M.config()
  require("refactoring").setup {}
end

return M
