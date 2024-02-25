local M = {
  "folke/which-key.nvim",
}

function M.config()
  local icons = require "user.icons"

  local mappings = {
    a = { name = icons.misc.Squirrel .. "AI Tools" },
    q = { "<cmd>confirm q<CR>", "Quit" },
    b = { desc = icons.kind.File .. "Buffers" },
    d = { name = icons.ui.Bug .. "Debug" },
    e = { name = icons.ui.EmptyFolderOpen .. "Neotree" },
    f = { name = icons.ui.Search .. "Find" },
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

  -- General

  wk.register {
    ["<ESC>"] = {
      function()
        if vim.fn.hlexists "Search" then
          vim.cmd "nohlsearch"
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, true, true), "n", true)
        end
      end,
      "Format",
    },
    ["<leader><leader>"] = { "<cmd>Telescope find_files<cr>", icons.ui.FindFile .. " Find files" },
    ["<leader>."] = { "<cmd>Telescope live_grep<cr>", icons.ui.Search .. "Find Text" },
  }
  wk.register {
    ["<leader>/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment line" },
  }
  wk.register {
    ["<leader>/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment", mode = "v" },
  }

  -- a - AI and assistants

  wk.register {
    ["<leader>aa"] = {
      function()
        require("neural").prompt()
      end,
      "Ask ChatGPT",
    },
    ["<leader>ae"] = { "<cmd>CopilotChatExplain<cr>", icons.git.Copilot .. " Explain code" },
    ["<leader>cf"] = { ":CopilotChatFixDiagnostic<cr>", icons.git.Copilot .. " Fix diagnostic" },
    ["<leader>at"] = { "<cmd>CopilotChatTests<cr>", icons.git.Copilot .. " Generate tests" },
    ["<leader>av"] = { ":CopilotChatVisual", icons.git.Copilot .. " Open in vertical split" },
    ["<leader>aC"] = { ":CopilotChatInPlace<cr>", icons.git.Copilot .. " Chat" },
  }

  -- b - Buffers
  wk.register {
    ["<leader>bb"] = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
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

  -- c - Code Actions

  wk.register {
    ["<leader>cf"] = {
      function()
        require("conform").format()
      end,
      "Format",
    },
  }

  -- f - Find & Search

  wk.register {
    ["<leader>fb"] = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    ["<leader>fc"] = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    ["<leader>fp"] = { "<cmd>lua require('telescope').extensions.projects.projects()<cr>", "Projects" },
    ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Help" },
    ["<leader>fl"] = { "<cmd>Telescope resume<cr>", "Last Search" },
    ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  }

  -- g - Git

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
