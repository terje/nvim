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
  ---@diagnostic disable: missing-fields
  require("neotest").setup {
    adapters = {
      require "neotest-jest" {
        jestCommand = "npm run test -- --passWithNoTests",
        env = { CI = true },
        cwd = function(path)
          return vim.fn.getcwd()
        end,
        jestConfigFile = function()
          local file = vim.fn.expand "%:p"
          if string.find(file, "/packages/") then
            return string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts"
          end

          return vim.fn.getcwd() .. "/jest.config.ts"
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
