local M = {
  "stevearc/overseer.nvim",
  opts = {
    task_list = { -- this refers to the window that shows the result
      direction = "bottom",
      min_height = 25,
      max_height = 25,
      default_detail = 1,
    },
  },
}

return M
