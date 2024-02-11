local M = {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}

function M.config()
    require("chatgpt").setup({
      api_key_cmd = "op read op://APIKeys/OpenAI/credential --no-newline",
      openai_params = {
        model = "gpt-4",
      },
    })
end

return M
