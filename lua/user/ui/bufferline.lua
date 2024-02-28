local M = {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
}

function M.config()
  require("bufferline").setup {
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  }
end

return M
