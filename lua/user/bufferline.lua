local M = {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  }
}

function M.config()
  require("bufferline").setup({
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    }
  })
  local wk = require("which-key")
  wk.register {
    ["<leader>bp"] = { "<Cmd>BufferLineTogglePin<CR>", "Toggle pin" },
    ["<leader>bP"] = { "<Cmd>BufferLineGroupClose ungrouped<CR>", "Delete non-pinned buffers" },
    ["<leader>bo"] = { "<Cmd>BufferLineCloseOthers<CR>", "Delete other buffers" },
    ["<leader>br"] = { "<Cmd>BufferLineCloseRight<CR>", "Delete buffers to the right" },
    ["<leader>bl"] = { "<Cmd>BufferLineCloseLeft<CR>", "Delete buffers to the left" },
    ["<S-h>"] = { "<Cmd>BufferLineCyclePrev<CR>", "Prev buffer" },
    ["<S-l>"] = { "<Cmd>BufferLineCycleNext<CR>", "Next buffer" },
    ["[b"] = { "<cmd>BufferLineCyclePrev<cr>", "Prev buffer" },
    ["]b"] = { "<cmd>BufferLineCycleNext<cr>", "Next buffer" },
  }
end

return M
