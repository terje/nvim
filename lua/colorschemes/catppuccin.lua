local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
}

function M.config()
  require("catppuccin").setup {
    integrations = {
      cmp = true,
      gitsigns = true,
      neotree = true,
      notify = true,
      which_key = true,
      lsp_trouble = true,
      noice = true,
      navic = {
        enabled = true,
        custom_bg = "NONE", -- "lualine" will set background to mantle
      },
      mini = {
        enabled = true,
        indentscope_color = "",
      },
      telescope = {
        enabled = true,
        -- style = "nvchad",
      },
    },
  }
  vim.cmd.colorscheme "catppuccin-mocha"
end

return M
