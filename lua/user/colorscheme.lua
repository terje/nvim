local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "catppuccin-mocha"
end

-- local M = {
--   "rebelot/kanagawa.nvim",
--   name = "kanagawa",
--   priority = 1000,
-- }
--
-- function M.config()
--   require("kanagawa").setup {
--     theme = "wave",
--     background = {
--       dark = "wave",
--     },
--   }
--
--   vim.cmd.colorscheme "kanagawa"
-- end

-- local M = {
--   "sainnhe/everforest", name = "everforest", priority = 1000,
-- }
--
-- function M.config()
--   -- Available values: 'hard', 'medium'(default), 'soft'
--   vim.g.everforest_background = 'hard'
--
--   vim.g.everforest_better_performance = 1
--
--   vim.cmd.colorscheme "everforest"
-- end

return M
