local M = {
  "sainnhe/everforest",
  name = "everforest",
  priority = 1000,
}

function M.config()
  -- Available values: 'hard', 'medium'(default), 'soft'
  vim.g.everforest_background = "hard"
  vim.g.everforest_better_performance = 1
  vim.cmd.colorscheme "everforest"
end

return M
