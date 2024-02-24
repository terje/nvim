local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    q = { "<cmd>confirm q<CR>", "Quit" },
    b = { desc = " Buffers" },
    d = { name = " Debug" },
    e = { name = "󰙅 Neotree" },
    f = { name = " Find" },
    g = { name = "󰊢 Git" },
    c = { name = " Code" },
    p = { name = "󰐱 Plugins" },
    t = { name = "󰙨 Test" },
    T = { name = "Treesitter" },
  }

  local wk = require "which-key"
  wk.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    icons = { group = vim.g.icons_enabled and "" or "", separator = "" },
    window = {
      border = "rounded",
      position = "bottom",
      padding = { 2, 2, 2, 2 },
    },
    ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  wk.register {
    ["<ESC>"] = {
      function()
        if vim.fn.hlexists "Search" then
          vim.cmd "nohlsearch"
        else
          vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("<ESC>", true, true, true),
            "n",
            true
          )
        end
      end,
      "Format",
    }
  }

  wk.register {
    ["<leader>cf"] = {
      function()
        require("conform").format()
      end,
      "Format",
    },
    ["<leader>ce"] = { "<cmd>CopilotChatExplain<cr>", "CopilotChat - Explain code" },
    ["<leader>cT"] = { "<cmd>CopilotChatTests<cr>", "CopilotChat - Generate tests" },
    ["<leader>cv"] = {
      ":CopilotChatVisual",
      mode = "x",
      desc = "CopilotChat - Open in vertical split",
    },
    ["<leader>cx"] = {
      ":CopilotChatInPlace<cr>",
      mode = "x",
      desc = "CopilotChat - Run in-place code",
    },
  }

  wk.register {
    ["<leader>a"] = { function() require("neural").prompt() end, " Ask ChatGPT" },
  }

  wk.register {
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "LazyGit" },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  wk.register(mappings, opts)
end

return M
