local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "catppuccin-mocha"
end

-- local M = {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   priority = 1000,
-- }
--
-- function M.config()
--   vim.cmd.colorscheme "rose-pine"
-- end

-- local M = {
--   "pauchiner/pastelnight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- }
--
-- function M.config()
--   vim.cmd.colorscheme "pastelnight"
-- end

-- local M = {
--   "embark-theme/vim",
--   name = "embark",
--   priority = 1000,
-- }
--
-- function M.config()
--   vim.cmd.colorscheme "embark"
-- end

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
