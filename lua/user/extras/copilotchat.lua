local M = {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
    debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
    disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
    -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
  },
  build = function()
    vim.notify "Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim."
  end,
  event = "VeryLazy",
  keys = {
    { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
    { "<leader>cT", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    {
      "<leader>cv",
      ":CopilotChatVisual",
      mode = "x",
      desc = "CopilotChat - Open in vertical split",
    },
    {
      "<leader>cx",
      ":CopilotChatInPlace<cr>",
      mode = "x",
      desc = "CopilotChat - Run in-place code",
    },
  },
}

return M
