local M = {
  "folke/edgy.nvim",
  event = "VeryLazy",
}

function M.config()
  require("edgy").setup {
    keys = {
      -- increase width
      ["<c-w>>"] = function(win)
        win:resize("width", 2)
      end,
      -- decrease width
      ["<c-w><lt>"] = function(win)
        win:resize("width", -2)
      end,
      -- increase height
      ["<c-w>+"] = function(win)
        win:resize("height", 2)
      end,
      -- decrease height
      ["<c-w>-"] = function(win)
        win:resize("height", -2)
      end,
    },
    right = {
      { ft = "codecompanion", title = "Code Companion Chat", size = { width = 0.45 } },
    },
  }
end

return M
