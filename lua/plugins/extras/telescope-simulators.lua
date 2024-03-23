local M = {
  "dimaportenko/telescope-simulators.nvim",
}

function M.config()
  require("simulators").setup {
    android_emulator = true,
    apple_simulator = true,
  }
end

return M
