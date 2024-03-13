local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true },
    "nvim-telescope/telescope-ui-select.nvim",
  },
}

function M.config()
  local icons = require "user.icons"
  local actions = require "telescope.actions"

  require("telescope").setup {
    defaults = {
      prompt_prefix = icons.ui.Telescope .. " ",
      selection_caret = icons.ui.Forward .. " ",
      entry_prefix = "   ",
      initial_mode = "insert",
      selection_strategy = "reset",
      path_display = { "smart" },
      color_devicons = true,
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
      },

      mappings = {
        i = {
          ["<C-n>"] = actions.cycle_history_next,
          ["<C-p>"] = actions.cycle_history_prev,

          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        },
        n = {
          ["<esc>"] = actions.close,
          ["j"] = actions.move_selection_next,
          ["k"] = actions.move_selection_previous,
          ["q"] = actions.close,
        },
      },
    },
    pickers = {
      live_grep = {
        theme = "ivy",
        layout_config = {
          vertical = { width = 0.2 },
        },
      },
      grep_string = {
        theme = "dropdown",
        layout_config = {
          vertical = { width = 0.8 },
        },
      },
      find_files = {
        -- theme = "theme"
        previewer = false,
        hidden = true,
        layout_config = {
          vertical = { width = 0.5 },
        },
        path_display = { "absolute" },
      },
      --   buffers = {
      --     theme = "dropdown",
      --     previewer = false,
      --     initial_mode = "normal",
      --     mappings = {
      --       i = {
      --         ["<C-d>"] = actions.delete_buffer,
      --       },
      --       n = {
      --         ["dd"] = actions.delete_buffer,
      --       },
      --     },
      --   },
      --   defaults = {
      --     layout_config = {
      --       vertical = { width = 0.8 },
      --       -- other layout configuration here
      --     },
      --   },
      --
      planets = {
        show_pluto = true,
        show_moon = true,
      },
      colorscheme = {
        enable_preview = true,
      },

      lsp_references = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      notify = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      lsp_definitions = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      lsp_declarations = {
        theme = "dropdown",
        initial_mode = "normal",
      },

      lsp_implementations = {
        theme = "dropdown",
        initial_mode = "normal",
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {},
      },
    },
  }

  require("telescope").load_extension "ui-select"
end

return M
