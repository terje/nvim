local M = {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    -- general tests
    "vim-test/vim-test",
    "nvim-neotest/neotest-vim-test",
    -- language specific tests
    "marilari88/neotest-vitest",
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-plenary",
    "nvim-neotest/neotest-jest",
    "rouge8/neotest-rust",
    "lawrence-laz/neotest-zig",
    "rcasia/neotest-bash",
  },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>tt"] = { "<cmd>lua require'neotest'.run.run()<cr>", "Test Nearest" },
    ["<leader>tT"] = { "<cmd>lua require'neotest'.run.run(vim.loop.cwd())<cr>", "Test All" },
    ["<leader>ts"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Toggle Summary" },
    ["<leader>tf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Test File" },
    ["<leader>td"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Test" },
    ["<leader>tS"] = { "<cmd>lua require('neotest').run.stop()<cr>", "Test Stop" },
    ["<leader>ta"] = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach Test" },
  }

  ---@diagnostic disable: missing-fields
  require("neotest").setup {
    adapters = {
      require "neotest-jest" {
        jestCommand = "npm run test -- --passWithNoTests",
        env = { CI = true },
        cwd = function(path)
          return vim.fn.getcwd()
        end,
        -- jest_test_discovery = false,
        -- jestConfigFile = '',
      },
      -- require "neotest-python" {
      --   dap = { justMyCode = false },
      -- },
      -- require "neotest-vitest",
      -- require "neotest-zig",
      -- require "neotest-vim-test" {
      --   ignore_file_types = { "python", "vim", "lua", "javascript", "typescript" },
      -- },
    },
  }
end

return M
