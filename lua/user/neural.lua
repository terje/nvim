local M = {
  'dense-analysis/neural',
  dependencies = {
    'muniftanjim/nui.nvim',
    'elpiloto/significant.nvim'
  }
}


function M.config()
  require('neural').setup {
    source = {
      openai = {
        api_key = "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"
      },
    },
    ui = {
      prompt_icon = ">",
    },
  }
end

return M
