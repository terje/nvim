local M = {}

local kill = function(appName, callback)
  vim.fn.jobstart("kill $(pgrep -f 'yarn " .. appName .. ":start')", {
    on_exit = callback,
  })
end

--- Run expo app using Yarn
-- @param appName string
local run = function(appName)
  kill(appName, function()
    local terminal = require "toggleterm"
    terminal.toggle()
    terminal.exec("yarn " .. appName .. ":start")
  end)
end

--- Quit Expo Go on running iOS Simulators
-- @param callback function to call when command finishes
M.quit = function(callback)
  callback = callback or function() end
  vim.fn.jobstart("xcrun simctl terminate booted host.exp.Exponent", {
    on_exit = callback,
  })
end

--- Uninstall Expo Go from running iOS Simulators
-- @param callback function to call when command finishes
M.uninstall = function(callback)
  vim.fn.jobstart("xcrun simctl uninstall booted host.exp.Exponent", {
    on_exit = callback,
  })
end

ExpoAppSlug = ""

M.run = function()
  ExpoAppSlug = vim.fn.input { prompt = "App slug: ", default = ExpoAppSlug }
  M.quit(function()
    run(ExpoAppSlug)
  end)
end

M.cleanAndRun = function()
  ExpoAppSlug = vim.fn.input { prompt = "App slug: ", default = ExpoAppSlug }
  M.uninstall(function()
    run(ExpoAppSlug)
  end)
end

return M
