local M = {}

--- Kill yarn app processes running from monorepo
-- Matches all yarn start command with app name (eg `yarn app:start`)
-- @param callback
local kill = function(callback)
  vim.schedule(function()
    vim.fn.jobstart("kill $(pgrep -f 'yarn [^ ]+:start')", {
      on_exit = callback,
    })
  end)
end

--- Run expo app using Yarn
-- Starts yarn command with app name (eg `yarn app:start`)
-- @param appName string
local run = function(appName)
  kill(function()
    local terminal = require "toggleterm"
    terminal.toggle()
    terminal.exec("yarn " .. appName .. ":start")
  end)
end

local map = function(tbl, func)
  local newtbl = {}
  for i, v in ipairs(tbl) do
    newtbl[i] = func(v)
  end
  return newtbl
end

--- Select app name in a monorepo from a list
-- Looks for all apps under ./apps directory
-- @param callback function to call with selected app slug
local selectApp = function(callback)
  local scan = require "plenary.scandir"
  local apps = scan.scan_dir("./apps", { hidden = false, depth = 1, only_dirs = true })
  local slugs = map(apps, function(v)
    return v:match "([^/]-)/?$"
  end)

  vim.ui.select(slugs, { prompt = "Select app" }, function(selected)
    callback(selected)
  end)
end

--- Quit Expo Go on running iOS Simulators
-- @param callback function to call when command finishes
M.quit = function(callback)
  require("simctl.api").terminate({ appId = "host.exp.Exponent" }, callback)
end

--- Uninstall Expo Go from running iOS Simulators
-- @param callback function to call when command finishes
M.uninstall = function(callback)
  require("simctl.api").uninstall({ appId = "host.exp.Exponent" }, callback)
end

M.run = function()
  selectApp(function(slug)
    M.quit(function()
      run(slug)
    end)
  end)
end

return M
