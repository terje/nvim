local M = {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  after = "catppuccin",
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
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
  }
end

return M
