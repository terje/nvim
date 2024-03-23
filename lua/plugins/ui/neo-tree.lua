local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>e"] = { "<cmd>Neotree toggle<cr>", "Toggle Neotree" },
  }

  local icons = require "lib.icons"

  require("neo-tree").setup {
    window = {
      width = 30,
    },
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    source_selector = {
      winbar = true,
      content_layout = "center",
      sources = {
        {
          source = "filesystem",
          display_name = " File",
        },
        {
          source = "buffers",
          display_name = "󰈙 Bufs",
        },
        {
          source = "git_status",
          display_name = "󰊢 Git",
        },
        {
          source = "diagnostics",
          display_name = "󰒡 Diagnostic",
        },
      },
    },
    filesystem = {
      bind_to_cwd = false,
      -- follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    default_component_configs = {
      git_status = {
        symbols = {
          -- Change type
          added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "✖", -- this can only be used in the git_status source
          renamed = "󰁕", -- this can only be used in the git_status source
          -- Status type
          untracked = icons.git.FileUntracked,
          ignored = icons.git.FileIgnored,
          unstaged = icons.git.FileUnstaged,
          staged = icons.git.FileStaged,
          conflict = "",
        },
      },
    },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    indent = {
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
  }
end

return M
